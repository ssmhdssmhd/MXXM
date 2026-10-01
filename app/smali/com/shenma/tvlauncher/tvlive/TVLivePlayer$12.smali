.class Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;
.super Ljava/lang/Object;
.source "TVLivePlayer.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->onCreateMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1517
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
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

    .line 1521
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetisMenuShow(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    .line 1522
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0, v4}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fputisMenuShow(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Z)V

    .line 1523
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0, v5}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fputisMenuItemShow(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;Z)V

    .line 1524
    packed-switch p3, :pswitch_data_0

    goto/16 :goto_0

    .line 1542
    :pswitch_0
    invoke-static {v2}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$sfputtvmenutype(I)V

    .line 1543
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetmenulist(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v3, Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;

    iget-object v4, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/TVLiveUtils;->getData(I)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v5, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v5}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetisMenuItemShow(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v3, v4, v1, v2, v5}, Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/Boolean;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 1537
    :pswitch_1
    invoke-static {v3}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$sfputtvmenutype(I)V

    .line 1538
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetmenulist(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;

    iget-object v4, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v2}, Lcom/shenma/tvlauncher/utils/TVLiveUtils;->getData(I)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v5, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v5}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetisMenuItemShow(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v4, v2, v3, v5}, Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1539
    goto :goto_0

    .line 1532
    :pswitch_2
    invoke-static {v5}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$sfputtvmenutype(I)V

    .line 1533
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetmenulist(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v3}, Lcom/shenma/tvlauncher/utils/TVLiveUtils;->getData(I)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v4}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetisMenuItemShow(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1534
    goto :goto_0

    .line 1527
    :pswitch_3
    invoke-static {v4}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$sfputtvmenutype(I)V

    .line 1528
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetmenulist(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v5}, Lcom/shenma/tvlauncher/utils/TVLiveUtils;->getData(I)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v5, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v5}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetisMenuItemShow(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/shenma/tvlauncher/tvlive/adapter/TVLiveMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1529
    nop

    .line 1544
    :goto_0
    goto/16 :goto_5

    .line 1546
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetisMenuItemShow(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1547
    const/4 v0, 0x0

    .line 1548
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$sfgettvmenutype()I

    move-result v6

    packed-switch v6, :pswitch_data_1

    goto/16 :goto_5

    .line 1609
    :pswitch_4
    sput p3, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->qycsposition:I

    .line 1610
    iget-object v4, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v4}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$600(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1611
    const-string v4, "delay_time"

    if-nez p3, :cond_1

    .line 1612
    const/16 v1, 0x1388

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1613
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 1614
    :cond_1
    if-ne p3, v5, :cond_2

    .line 1615
    const/16 v1, 0x1f40

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1616
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 1617
    :cond_2
    if-ne p3, v3, :cond_3

    .line 1618
    const/16 v1, 0x2710

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1619
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 1620
    :cond_3
    if-ne p3, v2, :cond_4

    .line 1621
    const/16 v1, 0x2ee0

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1622
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 1623
    :cond_4
    if-ne p3, v1, :cond_5

    .line 1624
    const/16 v1, 0x3a98

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1625
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1627
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$mgetdelay_time(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V

    .line 1628
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$mhideMenu(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V

    goto/16 :goto_5

    .line 1595
    :pswitch_5
    sput p3, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->phszposition:I

    .line 1596
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$500(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1597
    const-string v1, "playPre"

    if-nez p3, :cond_6

    .line 1598
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1599
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2

    .line 1600
    :cond_6
    if-ne p3, v5, :cond_7

    .line 1601
    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1602
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1604
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$mgetPlayPreferences(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V

    .line 1605
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$mhideMenu(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V

    .line 1606
    goto/16 :goto_5

    .line 1574
    :pswitch_6
    sput p3, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->hmblposition:I

    .line 1576
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    iget-object v4, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v4}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetmVV(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Lcom/baidu/cyberplayer/core/BVideoView;

    move-result-object v4

    sget v6, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->hmblposition:I

    iget-object v7, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v7}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$200(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)I

    move-result v7

    iget-object v8, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v8}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$300(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)I

    move-result v8

    invoke-static {v1, v4, v6, v7, v8}, Lcom/shenma/tvlauncher/utils/TVLiveUtils;->selectScales(Landroid/content/Context;Lcom/baidu/cyberplayer/core/BVideoView;III)V

    .line 1577
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$400(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1578
    const-string v1, "play_ratio"

    if-nez p3, :cond_8

    .line 1579
    const-string v2, "\u539f\u59cb\u6bd4\u4f8b"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1580
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3

    .line 1581
    :cond_8
    if-ne p3, v5, :cond_9

    .line 1582
    const-string v2, "4:3 \u7f29\u653e"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1583
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3

    .line 1584
    :cond_9
    if-ne p3, v3, :cond_a

    .line 1585
    const-string v2, "16:9\u7f29\u653e"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1586
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3

    .line 1587
    :cond_a
    if-ne p3, v2, :cond_b

    .line 1588
    const-string v2, "\u9ed8\u8ba4\u5168\u5c4f"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1589
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1591
    :cond_b
    :goto_3
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$mhideMenu(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V

    .line 1592
    goto :goto_5

    .line 1551
    :pswitch_7
    sput p3, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->jmposition:I

    .line 1552
    const-string v1, "play_decode"

    const-string v2, "mIsHwDecode"

    if-nez p3, :cond_c

    .line 1553
    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v3}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$000(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1554
    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1555
    const-string v2, "\u8f6f\u89e3\u7801"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1556
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4

    .line 1557
    :cond_c
    if-ne p3, v5, :cond_d

    .line 1558
    iget-object v3, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v3}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->access$100(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1559
    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1560
    const-string v2, "\u786c\u89e3\u7801"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1561
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1563
    :cond_d
    :goto_4
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$msetDecode(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V

    .line 1564
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetmVV(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Lcom/baidu/cyberplayer/core/BVideoView;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v2}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$fgetmIsHwDecode(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)Z

    move-result v2

    xor-int/2addr v2, v5

    invoke-virtual {v1, v2}, Lcom/baidu/cyberplayer/core/BVideoView;->setDecodeMode(I)V

    .line 1568
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    invoke-static {v1}, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->-$$Nest$mhideMenu(Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;)V

    .line 1569
    iget-object v1, p0, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer$12;->this$0:Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;

    iget-object v1, v1, Lcom/shenma/tvlauncher/tvlive/TVLivePlayer;->myHandler:Landroid/os/Handler;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1571
    nop

    .line 1632
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_e
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
