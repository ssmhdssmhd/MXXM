.class Lcom/shenma/tvlauncher/AppManageActivity$AppAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppManageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/AppManageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/AppManageActivity;

.field private viewHolder:Lcom/shenma/tvlauncher/AppManageActivity$ViewHolder;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/AppManageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/AppManageActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 458
    iput-object p1, p0, Lcom/shenma/tvlauncher/AppManageActivity$AppAdapter;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity$AppAdapter;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/AppManageActivity;->-$$Nest$fgetapplist(Lcom/shenma/tvlauncher/AppManageActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 469
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity$AppAdapter;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/AppManageActivity;->-$$Nest$fgetapplist(Lcom/shenma/tvlauncher/AppManageActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 474
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 479
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 480
    new-instance v1, Lcom/shenma/tvlauncher/AppManageActivity$ViewHolder;

    iget-object v2, p0, Lcom/shenma/tvlauncher/AppManageActivity$AppAdapter;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-direct {v1, v2}, Lcom/shenma/tvlauncher/AppManageActivity$ViewHolder;-><init>(Lcom/shenma/tvlauncher/AppManageActivity;)V

    iput-object v1, p0, Lcom/shenma/tvlauncher/AppManageActivity$AppAdapter;->viewHolder:Lcom/shenma/tvlauncher/AppManageActivity$ViewHolder;

    .line 481
    iget-object v1, p0, Lcom/shenma/tvlauncher/AppManageActivity$AppAdapter;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    sget v2, Lcom/shenma/tvlauncher/R$layout;->myapp_gridview_item:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 482
    iget-object v1, p0, Lcom/shenma/tvlauncher/AppManageActivity$AppAdapter;->viewHolder:Lcom/shenma/tvlauncher/AppManageActivity$ViewHolder;

    sget v2, Lcom/shenma/tvlauncher/R$id;->myapp_gridview_item_iv:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/shenma/tvlauncher/AppManageActivity$ViewHolder;->myapp_gridview_item_iv:Landroid/widget/ImageView;

    .line 483
    iget-object v1, p0, Lcom/shenma/tvlauncher/AppManageActivity$AppAdapter;->viewHolder:Lcom/shenma/tvlauncher/AppManageActivity$ViewHolder;

    sget v2, Lcom/shenma/tvlauncher/R$id;->myapp_gridview_item_love_iv:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/shenma/tvlauncher/AppManageActivity$ViewHolder;->myapp_gridview_item_love_iv:Landroid/widget/ImageView;

    .line 484
    iget-object v1, p0, Lcom/shenma/tvlauncher/AppManageActivity$AppAdapter;->viewHolder:Lcom/shenma/tvlauncher/AppManageActivity$ViewHolder;

    sget v2, Lcom/shenma/tvlauncher/R$id;->myapp_gridview_item_tv:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/shenma/tvlauncher/AppManageActivity$ViewHolder;->myapp_gridview_item_tv:Landroid/widget/TextView;

    .line 485
    iget-object v1, p0, Lcom/shenma/tvlauncher/AppManageActivity$AppAdapter;->viewHolder:Lcom/shenma/tvlauncher/AppManageActivity$ViewHolder;

    sget v2, Lcom/shenma/tvlauncher/R$id;->myapp_gridview_item_flag_tv:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/shenma/tvlauncher/AppManageActivity$ViewHolder;->myapp_gridview_item_flag_tv:Landroid/widget/TextView;

    .line 486
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 487
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, -0xa

    invoke-virtual {v1, v0, v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 488
    iget-object v2, p0, Lcom/shenma/tvlauncher/AppManageActivity$AppAdapter;->viewHolder:Lcom/shenma/tvlauncher/AppManageActivity$ViewHolder;

    iget-object v2, v2, Lcom/shenma/tvlauncher/AppManageActivity$ViewHolder;->myapp_gridview_item_tv:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 489
    sget v2, Lcom/shenma/tvlauncher/R$id;->myapp_rl:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 490
    .local v2, "rl":Landroid/widget/RelativeLayout;
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    iget-object v3, p0, Lcom/shenma/tvlauncher/AppManageActivity$AppAdapter;->viewHolder:Lcom/shenma/tvlauncher/AppManageActivity$ViewHolder;

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 492
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "rl":Landroid/widget/RelativeLayout;
    goto :goto_0

    .line 493
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/AppManageActivity$ViewHolder;

    iput-object v1, p0, Lcom/shenma/tvlauncher/AppManageActivity$AppAdapter;->viewHolder:Lcom/shenma/tvlauncher/AppManageActivity$ViewHolder;

    .line 495
    :goto_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/AppManageActivity$AppAdapter;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/AppManageActivity;->-$$Nest$fgetapplist(Lcom/shenma/tvlauncher/AppManageActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/dao/bean/AppInfo;

    .line 496
    .local v1, "aif":Lcom/shenma/tvlauncher/dao/bean/AppInfo;
    iget-object v2, p0, Lcom/shenma/tvlauncher/AppManageActivity$AppAdapter;->viewHolder:Lcom/shenma/tvlauncher/AppManageActivity$ViewHolder;

    iget-object v2, v2, Lcom/shenma/tvlauncher/AppManageActivity$ViewHolder;->myapp_gridview_item_iv:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/dao/bean/AppInfo;->getAppicon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 497
    iget-object v2, p0, Lcom/shenma/tvlauncher/AppManageActivity$AppAdapter;->viewHolder:Lcom/shenma/tvlauncher/AppManageActivity$ViewHolder;

    iget-object v2, v2, Lcom/shenma/tvlauncher/AppManageActivity$ViewHolder;->myapp_gridview_item_tv:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/dao/bean/AppInfo;->getAppname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    iget-object v2, p0, Lcom/shenma/tvlauncher/AppManageActivity$AppAdapter;->viewHolder:Lcom/shenma/tvlauncher/AppManageActivity$ViewHolder;

    iget-object v2, v2, Lcom/shenma/tvlauncher/AppManageActivity$ViewHolder;->myapp_gridview_item_flag_tv:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/dao/bean/AppInfo;->getApppack()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 500
    .local v2, "m_value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "LocaAppName"

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/dao/bean/AppInfo;->getAppname()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    iget-object v3, p0, Lcom/shenma/tvlauncher/AppManageActivity$AppAdapter;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    const-string v4, "LOCA_APP_NAME"

    invoke-static {v3, v4, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 502
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/dao/bean/AppInfo;->isLove()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 503
    iget-object v3, p0, Lcom/shenma/tvlauncher/AppManageActivity$AppAdapter;->viewHolder:Lcom/shenma/tvlauncher/AppManageActivity$ViewHolder;

    iget-object v3, v3, Lcom/shenma/tvlauncher/AppManageActivity$ViewHolder;->myapp_gridview_item_love_iv:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity$AppAdapter;->viewHolder:Lcom/shenma/tvlauncher/AppManageActivity$ViewHolder;

    iget-object v0, v0, Lcom/shenma/tvlauncher/AppManageActivity$ViewHolder;->myapp_gridview_item_love_iv:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 507
    :goto_1
    return-object p2
.end method
