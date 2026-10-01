.class public Lcom/shenma/tvlauncher/SettingActActvity;
.super Lcom/shenma/tvlauncher/BaseActivity;
.source "SettingActActvity.java"


# instance fields
.field private Msg:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private account:Landroid/widget/TextView;

.field private actishiwenzi:Landroid/widget/TextView;

.field private clock_state:Ljava/lang/String;

.field private empower_fens:Landroid/widget/TextView;

.field private empower_iv_pay_ecode:Landroid/widget/ImageView;

.field private empower_url:Ljava/lang/String;

.field private fen:Ljava/lang/String;

.field private inv_state:Ljava/lang/String;

.field public mQueue:Lcom/android/volley/RequestQueue;

.field private mediaHandler:Landroid/os/Handler;

.field private vipTime:Landroid/widget/TextView;

.field private vip_ac:Landroid/widget/LinearLayout;

.field private vip_acno:Landroid/widget/TextView;

.field private vip_clock:Landroid/widget/LinearLayout;

.field private vip_goods_1_message:Landroid/widget/TextView;

.field private vip_goods_1_price:Landroid/widget/TextView;

.field private vip_goods_1_title:Landroid/widget/TextView;

.field private vip_goods_2_message:Landroid/widget/TextView;

.field private vip_goods_2_price:Landroid/widget/TextView;

.field private vip_goods_2_title:Landroid/widget/TextView;

.field private vip_goods_3_message:Landroid/widget/TextView;

.field private vip_goods_3_price:Landroid/widget/TextView;

.field private vip_goods_3_title:Landroid/widget/TextView;

.field private vip_goods_4_message:Landroid/widget/TextView;

.field private vip_goods_4_price:Landroid/widget/TextView;

.field private vip_goods_4_title:Landroid/widget/TextView;

.field private vip_goods_gid_1:Landroid/widget/TextView;

.field private vip_goods_gid_2:Landroid/widget/TextView;

.field private vip_goods_gid_3:Landroid/widget/TextView;

.field private vip_goods_gid_4:Landroid/widget/TextView;

.field private vip_goods_r_1:Landroid/widget/RelativeLayout;

.field private vip_goods_r_2:Landroid/widget/RelativeLayout;

.field private vip_goods_r_3:Landroid/widget/RelativeLayout;

.field private vip_goods_r_4:Landroid/widget/RelativeLayout;

.field private vip_inv:Landroid/widget/LinearLayout;

.field private vip_root_clock:Landroid/widget/RelativeLayout;

.field private vip_root_inv:Landroid/widget/RelativeLayout;

.field private vip_root_lin_1:Landroid/widget/LinearLayout;

.field private vip_root_lin_2:Landroid/widget/LinearLayout;

.field private vip_root_lin_3:Landroid/widget/LinearLayout;

.field private vip_root_lin_4:Landroid/widget/LinearLayout;


# direct methods
.method static bridge synthetic -$$Nest$fgetMsg(Lcom/shenma/tvlauncher/SettingActActvity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->Msg:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/SettingActActvity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->mediaHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mFenList(Lcom/shenma/tvlauncher/SettingActActvity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/SettingActActvity;->FenList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mGetInfo(Lcom/shenma/tvlauncher/SettingActActvity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/SettingActActvity;->GetInfo()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mloadImg(Lcom/shenma/tvlauncher/SettingActActvity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/SettingActActvity;->loadImg()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mvip_goods_r_1(Lcom/shenma/tvlauncher/SettingActActvity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_r_1()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mvip_goods_r_2(Lcom/shenma/tvlauncher/SettingActActvity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_r_2()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mvip_goods_r_3(Lcom/shenma/tvlauncher/SettingActActvity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_r_3()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mvip_goods_r_4(Lcom/shenma/tvlauncher/SettingActActvity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_r_4()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mvip_root_clock(Lcom/shenma/tvlauncher/SettingActActvity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/SettingActActvity;->vip_root_clock()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mvip_root_inv(Lcom/shenma/tvlauncher/SettingActActvity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/SettingActActvity;->vip_root_inv()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/shenma/tvlauncher/BaseActivity;-><init>()V

    .line 51
    const-string v0, "SettingActActvity"

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->TAG:Ljava/lang/String;

    .line 92
    const-string v0, "1"

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->clock_state:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->inv_state:Ljava/lang/String;

    .line 94
    new-instance v0, Lcom/shenma/tvlauncher/SettingActActvity$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/SettingActActvity$1;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->mediaHandler:Landroid/os/Handler;

    return-void
.end method

.method private FenList()V
    .locals 23

    .line 591
    move-object/from16 v1, p0

    const-string v0, "gname"

    const-string v2, "inv_state"

    const-string v3, "clock_state"

    :try_start_0
    new-instance v4, Lorg/json/JSONTokener;

    iget-object v5, v1, Lcom/shenma/tvlauncher/SettingActActvity;->fen:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v4

    .line 592
    .local v4, "object":Ljava/lang/Object;
    instance-of v5, v4, Lorg/json/JSONArray;

    if-eqz v5, :cond_a

    .line 593
    move-object v5, v4

    check-cast v5, Lorg/json/JSONArray;

    .line 594
    .local v5, "jsonArray":Lorg/json/JSONArray;
    const/4 v6, 0x4

    new-array v7, v6, [Landroid/widget/TextView;

    iget-object v8, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_gid_1:Landroid/widget/TextView;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    iget-object v8, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_gid_2:Landroid/widget/TextView;

    const/4 v10, 0x1

    aput-object v8, v7, v10

    iget-object v8, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_gid_3:Landroid/widget/TextView;

    const/4 v11, 0x2

    aput-object v8, v7, v11

    iget-object v8, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_gid_4:Landroid/widget/TextView;

    const/4 v12, 0x3

    aput-object v8, v7, v12

    .line 595
    .local v7, "gidViews":[Landroid/widget/TextView;
    new-array v8, v6, [Landroid/widget/TextView;

    iget-object v13, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_1_title:Landroid/widget/TextView;

    aput-object v13, v8, v9

    iget-object v13, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_2_title:Landroid/widget/TextView;

    aput-object v13, v8, v10

    iget-object v13, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_3_title:Landroid/widget/TextView;

    aput-object v13, v8, v11

    iget-object v13, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_4_title:Landroid/widget/TextView;

    aput-object v13, v8, v12

    .line 596
    .local v8, "titleViews":[Landroid/widget/TextView;
    new-array v13, v6, [Landroid/widget/TextView;

    iget-object v14, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_1_price:Landroid/widget/TextView;

    aput-object v14, v13, v9

    iget-object v14, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_2_price:Landroid/widget/TextView;

    aput-object v14, v13, v10

    iget-object v14, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_3_price:Landroid/widget/TextView;

    aput-object v14, v13, v11

    iget-object v14, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_4_price:Landroid/widget/TextView;

    aput-object v14, v13, v12

    .line 597
    .local v13, "priceViews":[Landroid/widget/TextView;
    new-array v14, v6, [Landroid/widget/TextView;

    iget-object v15, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_1_message:Landroid/widget/TextView;

    aput-object v15, v14, v9

    iget-object v15, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_2_message:Landroid/widget/TextView;

    aput-object v15, v14, v10

    iget-object v15, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_3_message:Landroid/widget/TextView;

    aput-object v15, v14, v11

    iget-object v15, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_4_message:Landroid/widget/TextView;

    aput-object v15, v14, v12

    .line 598
    .local v14, "messageViews":[Landroid/widget/TextView;
    new-array v15, v6, [Landroid/widget/LinearLayout;

    const/16 v16, 0x1

    iget-object v10, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_root_lin_1:Landroid/widget/LinearLayout;

    aput-object v10, v15, v9

    iget-object v10, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_root_lin_2:Landroid/widget/LinearLayout;

    aput-object v10, v15, v16

    iget-object v10, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_root_lin_3:Landroid/widget/LinearLayout;

    aput-object v10, v15, v11

    iget-object v10, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_root_lin_4:Landroid/widget/LinearLayout;

    aput-object v10, v15, v12

    .line 599
    .local v15, "rootLinViews":[Landroid/widget/LinearLayout;
    new-array v6, v6, [Landroid/widget/RelativeLayout;

    iget-object v10, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_r_1:Landroid/widget/RelativeLayout;

    aput-object v10, v6, v9

    iget-object v10, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_r_2:Landroid/widget/RelativeLayout;

    aput-object v10, v6, v16

    iget-object v10, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_r_3:Landroid/widget/RelativeLayout;

    aput-object v10, v6, v11

    iget-object v10, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_r_4:Landroid/widget/RelativeLayout;

    aput-object v10, v6, v12

    .line 600
    .local v6, "goodsRViews":[Landroid/widget/RelativeLayout;
    const/4 v10, 0x0

    .line 601
    .local v10, "index":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v12, v11, :cond_9

    const/4 v11, 0x5

    if-ge v10, v11, :cond_9

    .line 602
    invoke-virtual {v5, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 603
    .local v11, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "0"

    if-eqz v17, :cond_1

    .line 604
    move-object/from16 v17, v4

    .end local v4    # "object":Ljava/lang/Object;
    .local v17, "object":Ljava/lang/Object;
    :try_start_1
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/shenma/tvlauncher/SettingActActvity;->clock_state:Ljava/lang/String;

    .line 605
    iget-object v4, v1, Lcom/shenma/tvlauncher/SettingActActvity;->clock_state:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 606
    iget-object v4, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_clock:Landroid/widget/LinearLayout;

    move-object/from16 v19, v3

    const/16 v3, 0x8

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 605
    :cond_0
    move-object/from16 v19, v3

    goto :goto_1

    .line 603
    .end local v17    # "object":Ljava/lang/Object;
    .restart local v4    # "object":Ljava/lang/Object;
    :cond_1
    move-object/from16 v19, v3

    move-object/from16 v17, v4

    .line 609
    .end local v4    # "object":Ljava/lang/Object;
    .restart local v17    # "object":Ljava/lang/Object;
    :goto_1
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 610
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/shenma/tvlauncher/SettingActActvity;->inv_state:Ljava/lang/String;

    .line 611
    iget-object v3, v1, Lcom/shenma/tvlauncher/SettingActActvity;->inv_state:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 612
    iget-object v3, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_inv:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 614
    :cond_2
    const-string v3, "login_type"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 615
    .local v3, "login_type":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    .line 616
    iget-object v4, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_inv:Landroid/widget/LinearLayout;

    move-object/from16 v20, v2

    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 615
    :cond_3
    move-object/from16 v20, v2

    goto :goto_2

    .line 609
    .end local v3    # "login_type":I
    :cond_4
    move-object/from16 v20, v2

    .line 619
    :goto_2
    iget-object v2, v1, Lcom/shenma/tvlauncher/SettingActActvity;->clock_state:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/shenma/tvlauncher/SettingActActvity;->inv_state:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 620
    iget-object v2, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_ac:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 621
    iget-object v2, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vip_acno:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 623
    :cond_5
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 624
    const-string v2, "gid"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 625
    .local v2, "gid":Ljava/lang/String;
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 626
    .local v3, "gname":Ljava/lang/String;
    const-string v4, "fen_num"

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 627
    .local v4, "fen_num":Ljava/lang/String;
    const-string/jumbo v9, "vip_num"

    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 628
    .local v9, "vip_num":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_6

    move-object/from16 v18, v0

    array-length v0, v7

    if-ge v10, v0, :cond_7

    .line 629
    aget-object v0, v7, v10

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 630
    aget-object v0, v8, v10

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    aget-object v0, v13, v10

    move-object/from16 v21, v2

    .end local v2    # "gid":Ljava/lang/String;
    .local v21, "gid":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v22, v3

    .end local v3    # "gname":Ljava/lang/String;
    .local v22, "gname":Ljava/lang/String;
    sget v3, Lcom/shenma/tvlauncher/R$string;->integral:I

    invoke-virtual {v1, v3}, Lcom/shenma/tvlauncher/SettingActActvity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 632
    aget-object v0, v14, v10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/shenma/tvlauncher/R$string;->After_successful_redemption:I

    invoke-virtual {v1, v3}, Lcom/shenma/tvlauncher/SettingActActvity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/shenma/tvlauncher/R$string;->Obtaining_membership:I

    invoke-virtual {v1, v3}, Lcom/shenma/tvlauncher/SettingActActvity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/shenma/tvlauncher/R$string;->hour:I

    invoke-virtual {v1, v3}, Lcom/shenma/tvlauncher/SettingActActvity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    aget-object v0, v15, v10

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 634
    aget-object v0, v6, v10

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 635
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 628
    .end local v21    # "gid":Ljava/lang/String;
    .end local v22    # "gname":Ljava/lang/String;
    .restart local v2    # "gid":Ljava/lang/String;
    .restart local v3    # "gname":Ljava/lang/String;
    :cond_6
    move-object/from16 v18, v0

    :cond_7
    move-object/from16 v21, v2

    move-object/from16 v22, v3

    const/4 v2, 0x0

    .end local v2    # "gid":Ljava/lang/String;
    .end local v3    # "gname":Ljava/lang/String;
    .restart local v21    # "gid":Ljava/lang/String;
    .restart local v22    # "gname":Ljava/lang/String;
    goto :goto_3

    .line 623
    .end local v4    # "fen_num":Ljava/lang/String;
    .end local v9    # "vip_num":Ljava/lang/String;
    .end local v21    # "gid":Ljava/lang/String;
    .end local v22    # "gname":Ljava/lang/String;
    :cond_8
    move-object/from16 v18, v0

    const/4 v2, 0x0

    .line 601
    .end local v11    # "jsonObject":Lorg/json/JSONObject;
    :goto_3
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, v17

    move-object/from16 v0, v18

    move-object/from16 v3, v19

    move-object/from16 v2, v20

    const/4 v9, 0x0

    const/4 v11, 0x2

    goto/16 :goto_0

    .end local v17    # "object":Ljava/lang/Object;
    .local v4, "object":Ljava/lang/Object;
    :cond_9
    move-object/from16 v17, v4

    .end local v4    # "object":Ljava/lang/Object;
    .restart local v17    # "object":Ljava/lang/Object;
    goto :goto_4

    .line 592
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "goodsRViews":[Landroid/widget/RelativeLayout;
    .end local v7    # "gidViews":[Landroid/widget/TextView;
    .end local v8    # "titleViews":[Landroid/widget/TextView;
    .end local v10    # "index":I
    .end local v12    # "i":I
    .end local v13    # "priceViews":[Landroid/widget/TextView;
    .end local v14    # "messageViews":[Landroid/widget/TextView;
    .end local v15    # "rootLinViews":[Landroid/widget/LinearLayout;
    .end local v17    # "object":Ljava/lang/Object;
    .restart local v4    # "object":Ljava/lang/Object;
    :cond_a
    move-object/from16 v17, v4

    .line 645
    .end local v4    # "object":Ljava/lang/Object;
    :goto_4
    goto :goto_5

    .line 643
    :catch_0
    move-exception v0

    .line 644
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 646
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_5
    return-void
.end method

.method private GetAcText()V
    .locals 13

    .line 649
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 650
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 651
    .local v12, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 652
    .local v7, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 653
    .local v8, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 654
    .local v9, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 655
    .local v10, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 656
    .local v11, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 657
    .local v6, "miType":I
    new-instance v0, Lcom/shenma/tvlauncher/SettingActActvity$21;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/api.php?app="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/Api;->JUHEQQ692000321_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&act=ac_notice"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shenma/tvlauncher/SettingActActvity$19;

    invoke-direct {v4, p0}, Lcom/shenma/tvlauncher/SettingActActvity$19;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;)V

    new-instance v5, Lcom/shenma/tvlauncher/SettingActActvity$20;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/SettingActActvity$20;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;)V

    const/4 v2, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/shenma/tvlauncher/SettingActActvity$21;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingActActvity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 699
    return-void
.end method

.method private GetClock()V
    .locals 13

    .line 363
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->context:Landroid/content/Context;

    sget v2, Lcom/shenma/tvlauncher/R$string;->loading:I

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Utils;->loadingShow_tv(Landroid/content/Context;I)V

    .line 364
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 365
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 366
    .local v12, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 367
    .local v7, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 368
    .local v8, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 369
    .local v9, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 370
    .local v10, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 371
    .local v11, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 372
    .local v6, "miType":I
    new-instance v0, Lcom/shenma/tvlauncher/SettingActActvity$14;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/api.php?app="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/Api;->JUHEQQ692000321_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&act=clock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shenma/tvlauncher/SettingActActvity$12;

    invoke-direct {v4, p0}, Lcom/shenma/tvlauncher/SettingActActvity$12;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;)V

    new-instance v5, Lcom/shenma/tvlauncher/SettingActActvity$13;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/SettingActActvity$13;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;)V

    const/4 v2, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/shenma/tvlauncher/SettingActActvity$14;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingActActvity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 413
    return-void
.end method

.method private GetInfo()V
    .locals 13

    .line 734
    new-instance v0, Lcom/shenma/tvlauncher/SettingActActvity$22;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/SettingActActvity$22;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;)V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 741
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 742
    .local v12, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 743
    .local v7, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 744
    .local v8, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 745
    .local v9, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 746
    .local v10, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 747
    .local v11, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 748
    .local v6, "miType":I
    new-instance v0, Lcom/shenma/tvlauncher/SettingActActvity$25;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/api.php?app="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/Api;->JUHEQQ692000321_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&act=get_info"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shenma/tvlauncher/SettingActActvity$23;

    invoke-direct {v4, p0}, Lcom/shenma/tvlauncher/SettingActActvity$23;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;)V

    new-instance v5, Lcom/shenma/tvlauncher/SettingActActvity$24;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/SettingActActvity$24;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;)V

    const/4 v2, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/shenma/tvlauncher/SettingActActvity$25;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingActActvity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 790
    return-void
.end method

.method private Getfen()V
    .locals 13

    .line 503
    new-instance v0, Lcom/shenma/tvlauncher/SettingActActvity$15;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/SettingActActvity$15;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;)V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 510
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 511
    .local v12, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 512
    .local v7, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 513
    .local v8, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 514
    .local v9, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 515
    .local v10, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 516
    .local v11, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 517
    .local v6, "miType":I
    new-instance v0, Lcom/shenma/tvlauncher/SettingActActvity$18;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/api.php?app="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/Api;->JUHEQQ692000321_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&act=fen"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shenma/tvlauncher/SettingActActvity$16;

    invoke-direct {v4, p0}, Lcom/shenma/tvlauncher/SettingActActvity$16;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;)V

    new-instance v5, Lcom/shenma/tvlauncher/SettingActActvity$17;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/SettingActActvity$17;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;)V

    const/4 v2, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/shenma/tvlauncher/SettingActActvity$18;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingActActvity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 560
    return-void
.end method

.method private Getfen(Ljava/lang/String;)V
    .locals 14
    .param p1, "gid"    # Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->context:Landroid/content/Context;

    sget v2, Lcom/shenma/tvlauncher/R$string;->loading:I

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Utils;->loadingShow_tv(Landroid/content/Context;I)V

    .line 262
    new-instance v0, Lcom/shenma/tvlauncher/SettingActActvity$8;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/SettingActActvity$8;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;)V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 269
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 270
    .local v13, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 271
    .local v8, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 272
    .local v9, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 273
    .local v10, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 274
    .local v11, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 275
    .local v12, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 276
    .local v7, "miType":I
    new-instance v0, Lcom/shenma/tvlauncher/SettingActActvity$11;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/api.php?app="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/Api;->JUHEQQ692000321_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&act=get_fen"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shenma/tvlauncher/SettingActActvity$9;

    invoke-direct {v4, p0}, Lcom/shenma/tvlauncher/SettingActActvity$9;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;)V

    new-instance v5, Lcom/shenma/tvlauncher/SettingActActvity$10;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/SettingActActvity$10;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;)V

    const/4 v2, 0x1

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v12}, Lcom/shenma/tvlauncher/SettingActActvity$11;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingActActvity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 318
    return-void
.end method

.method private initData()V
    .locals 0

    .line 496
    invoke-direct {p0}, Lcom/shenma/tvlauncher/SettingActActvity;->Getfen()V

    .line 497
    invoke-direct {p0}, Lcom/shenma/tvlauncher/SettingActActvity;->GetAcText()V

    .line 498
    invoke-direct {p0}, Lcom/shenma/tvlauncher/SettingActActvity;->GetInfo()V

    .line 499
    return-void
.end method

.method private loadImg()V
    .locals 2

    .line 849
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/SettingActActvity;->empower_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/SettingActActvity;->empower_iv_pay_ecode:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 850
    return-void
.end method

.method private vip_goods_r_1()V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_gid_1:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "gid":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->Getfen(Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method private vip_goods_r_2()V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_gid_2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "gid":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->Getfen(Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method private vip_goods_r_3()V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_gid_3:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "gid":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->Getfen(Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method private vip_goods_r_4()V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_gid_4:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "gid":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->Getfen(Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method private vip_root_clock()V
    .locals 0

    .line 244
    invoke-direct {p0}, Lcom/shenma/tvlauncher/SettingActActvity;->GetClock()V

    .line 245
    return-void
.end method

.method private vip_root_inv()V
    .locals 4

    .line 249
    const-string v0, "login_type"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 250
    .local v0, "login_type":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 251
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/shenma/tvlauncher/SettingInvActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/SettingActActvity;->startActivity(Landroid/content/Intent;)V

    .line 252
    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/shenma/tvlauncher/SettingActActvity;->overridePendingTransition(II)V

    .line 253
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/SettingActActvity;->finish()V

    goto :goto_0

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/SettingActActvity;->context:Landroid/content/Context;

    sget v2, Lcom/shenma/tvlauncher/R$string;->Not_yet_activated:I

    sget v3, Lcom/shenma/tvlauncher/R$drawable;->toast_shut:I

    invoke-static {v1, v2, v3}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 257
    :goto_0
    return-void
.end method


# virtual methods
.method public AcTextResponse(Ljava/lang/String;)V
    .locals 11
    .param p1, "response"    # Ljava/lang/String;

    .line 703
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, "RC4KEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 705
    .local v2, "RSAKEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 706
    .local v3, "AESKEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 709
    .local v1, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 710
    .local v4, "jSONObject":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 711
    .local v5, "code":I
    const/16 v6, 0xc8

    if-ne v5, v6, :cond_3

    .line 712
    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    .local v6, "miType":I
    const/4 v8, 0x0

    .line 714
    .local v8, "msg":Lorg/json/JSONObject;
    const-string v9, "msg"

    if-ne v6, v7, :cond_0

    .line 715
    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v0}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v8, v7

    goto :goto_0

    .line 716
    :cond_0
    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 717
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v2}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v8, v7

    goto :goto_0

    .line 718
    :cond_1
    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 719
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9, v1}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v8, v7

    .line 721
    :cond_2
    :goto_0
    const-string v7, "content"

    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 722
    .local v7, "content":Ljava/lang/String;
    const-string v9, "qr_code_url"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 723
    .local v9, "qrCodeUrl":Ljava/lang/String;
    iput-object v9, p0, Lcom/shenma/tvlauncher/SettingActActvity;->empower_url:Ljava/lang/String;

    .line 724
    iget-object v10, p0, Lcom/shenma/tvlauncher/SettingActActvity;->actishiwenzi:Landroid/widget/TextView;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 726
    .end local v6    # "miType":I
    .end local v7    # "content":Ljava/lang/String;
    .end local v8    # "msg":Lorg/json/JSONObject;
    .end local v9    # "qrCodeUrl":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/shenma/tvlauncher/SettingActActvity;->mediaHandler:Landroid/os/Handler;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 729
    nop

    .end local v4    # "jSONObject":Lorg/json/JSONObject;
    .end local v5    # "code":I
    goto :goto_1

    .line 727
    :catch_0
    move-exception v4

    .line 728
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 730
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public ClockResponse(Ljava/lang/String;)V
    .locals 12
    .param p1, "response"    # Ljava/lang/String;

    .line 417
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "RC4KEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, "RSAKEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 420
    .local v3, "AESKEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, "AESIV":Ljava/lang/String;
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->loadingClose_Tv()V

    .line 424
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 425
    .local v4, "jSONObject":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 426
    .local v5, "code":I
    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    .local v6, "miType":I
    const/4 v8, 0x0

    .line 428
    .local v8, "msg":Ljava/lang/String;
    const/4 v9, 0x2

    const-string v10, "msg"

    if-ne v6, v7, :cond_0

    .line 429
    :try_start_1
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    goto :goto_0

    .line 430
    :cond_0
    if-ne v6, v9, :cond_1

    .line 431
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    goto :goto_0

    .line 432
    :cond_1
    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 433
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7, v1}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v8, v7

    .line 435
    :cond_2
    :goto_0
    const/16 v7, 0xc8

    const-string v10, "UTF-8"

    if-ne v5, v7, :cond_3

    .line 436
    :try_start_2
    invoke-static {v8, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->Msg:Ljava/lang/String;

    .line 437
    iget-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 438
    :cond_3
    const/16 v7, 0x7d

    const/4 v9, 0x7

    if-ne v5, v7, :cond_4

    .line 439
    invoke-static {v8, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->Msg:Ljava/lang/String;

    .line 440
    iget-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 441
    :cond_4
    const/16 v7, 0x7f

    if-ne v5, v7, :cond_5

    .line 442
    invoke-static {v8, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->Msg:Ljava/lang/String;

    .line 443
    iget-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 444
    :cond_5
    const/16 v7, 0x72

    if-ne v5, v7, :cond_6

    .line 445
    invoke-static {v8, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->Msg:Ljava/lang/String;

    .line 446
    iget-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string/jumbo v10, "userName"

    const/4 v11, 0x0

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v10, "passWord"

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string/jumbo v10, "vip"

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v10, "fen"

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v10, "ckinfo"

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 447
    iget-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 449
    :cond_6
    invoke-static {v8, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->Msg:Ljava/lang/String;

    .line 450
    iget-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->mediaHandler:Landroid/os/Handler;

    const/4 v9, 0x6

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 454
    .end local v4    # "jSONObject":Lorg/json/JSONObject;
    .end local v5    # "code":I
    .end local v6    # "miType":I
    .end local v8    # "msg":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 452
    :catch_0
    move-exception v4

    .line 453
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 455
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public FenResponse(Ljava/lang/String;)V
    .locals 9
    .param p1, "response"    # Ljava/lang/String;

    .line 564
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, "RC4KEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 566
    .local v2, "RSAKEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 567
    .local v3, "AESKEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 570
    .local v1, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 571
    .local v4, "jSONObject":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 572
    .local v5, "code":I
    const/16 v6, 0xc8

    if-ne v5, v6, :cond_3

    .line 573
    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    .local v6, "miType":I
    const-string v8, "msg"

    if-ne v6, v7, :cond_0

    .line 575
    :try_start_1
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->fen:Ljava/lang/String;

    goto :goto_0

    .line 576
    :cond_0
    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 577
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->fen:Ljava/lang/String;

    goto :goto_0

    .line 578
    :cond_1
    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 579
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7, v1}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->fen:Ljava/lang/String;

    .line 581
    :cond_2
    :goto_0
    iget-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->mediaHandler:Landroid/os/Handler;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 585
    .end local v4    # "jSONObject":Lorg/json/JSONObject;
    .end local v5    # "code":I
    .end local v6    # "miType":I
    :cond_3
    goto :goto_1

    .line 583
    :catch_0
    move-exception v4

    .line 584
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 586
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public GetfenResponse(Ljava/lang/String;)V
    .locals 12
    .param p1, "response"    # Ljava/lang/String;

    .line 322
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "RC4KEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, "RSAKEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 325
    .local v3, "AESKEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "AESIV":Ljava/lang/String;
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->loadingClose_Tv()V

    .line 329
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 330
    .local v4, "jSONObject":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 331
    .local v5, "code":I
    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .local v6, "miType":I
    const/4 v8, 0x0

    .line 333
    .local v8, "msg":Ljava/lang/String;
    const-string v9, "msg"

    if-ne v6, v7, :cond_0

    .line 334
    :try_start_1
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    goto :goto_0

    .line 335
    :cond_0
    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 336
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    goto :goto_0

    .line 337
    :cond_1
    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 338
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7, v1}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    .line 340
    :cond_2
    :goto_0
    const/16 v7, 0xc8

    if-ne v5, v7, :cond_3

    .line 341
    iget-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->mediaHandler:Landroid/os/Handler;

    const/4 v9, 0x5

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 342
    :cond_3
    const/16 v7, 0x7d

    const/4 v9, 0x7

    const-string v10, "UTF-8"

    if-ne v5, v7, :cond_4

    .line 343
    :try_start_2
    invoke-static {v8, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->Msg:Ljava/lang/String;

    .line 344
    iget-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 345
    :cond_4
    const/16 v7, 0x7f

    if-ne v5, v7, :cond_5

    .line 346
    invoke-static {v8, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->Msg:Ljava/lang/String;

    .line 347
    iget-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 348
    :cond_5
    const/16 v7, 0x72

    if-ne v5, v7, :cond_6

    .line 349
    invoke-static {v8, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->Msg:Ljava/lang/String;

    .line 350
    iget-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string/jumbo v10, "userName"

    const/4 v11, 0x0

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v10, "passWord"

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string/jumbo v10, "vip"

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v10, "fen"

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v10, "ckinfo"

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 351
    iget-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 353
    :cond_6
    invoke-static {v8, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->Msg:Ljava/lang/String;

    .line 354
    iget-object v7, p0, Lcom/shenma/tvlauncher/SettingActActvity;->mediaHandler:Landroid/os/Handler;

    const/4 v9, 0x6

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 358
    .end local v4    # "jSONObject":Lorg/json/JSONObject;
    .end local v5    # "code":I
    .end local v6    # "miType":I
    .end local v8    # "msg":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 356
    :catch_0
    move-exception v4

    .line 357
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 359
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public InfoResponse(Ljava/lang/String;)V
    .locals 22
    .param p1, "response"    # Ljava/lang/String;

    .line 794
    move-object/from16 v1, p0

    const-string v0, "fen"

    const-string/jumbo v2, "vip"

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v1, v3, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 795
    .local v3, "RC4KEY":Ljava/lang/String;
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v1, v5, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 796
    .local v5, "RSAKEY":Ljava/lang/String;
    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v1, v6, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 797
    .local v6, "AESKEY":Ljava/lang/String;
    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v1, v7, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 800
    .local v7, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    move-object/from16 v9, p1

    :try_start_1
    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 801
    .local v8, "jSONObject":Lorg/json/JSONObject;
    const-string v10, "code"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    .line 802
    .local v10, "code":I
    const-string v11, "msg"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 803
    .local v11, "msg":Ljava/lang/String;
    sget-object v12, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-static {v1, v12, v13}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 804
    .local v12, "miType":I
    const/4 v14, 0x0

    .line 805
    .local v14, "jSON":Lorg/json/JSONObject;
    if-ne v12, v13, :cond_0

    .line 806
    :try_start_2
    new-instance v15, Lorg/json/JSONObject;

    invoke-static {v11, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v15, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v14, v15

    goto :goto_0

    .line 842
    .end local v8    # "jSONObject":Lorg/json/JSONObject;
    .end local v10    # "code":I
    .end local v11    # "msg":Ljava/lang/String;
    .end local v12    # "miType":I
    .end local v14    # "jSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    goto/16 :goto_6

    .line 807
    .restart local v8    # "jSONObject":Lorg/json/JSONObject;
    .restart local v10    # "code":I
    .restart local v11    # "msg":Ljava/lang/String;
    .restart local v12    # "miType":I
    .restart local v14    # "jSON":Lorg/json/JSONObject;
    :cond_0
    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    .line 808
    new-instance v13, Lorg/json/JSONObject;

    invoke-static {v11, v5}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v14, v13

    goto :goto_0

    .line 809
    :cond_1
    const/4 v13, 0x3

    if-ne v12, v13, :cond_2

    .line 810
    new-instance v13, Lorg/json/JSONObject;

    invoke-static {v6, v11, v7}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v14, v13

    .line 812
    :cond_2
    :goto_0
    :try_start_3
    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 813
    .local v13, "vip":Ljava/lang/String;
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 814
    .local v15, "fen":Ljava/lang/String;
    move-object/from16 v16, v3

    .end local v3    # "RC4KEY":Ljava/lang/String;
    .local v16, "RC4KEY":Ljava/lang/String;
    const/16 v3, 0xc8

    if-ne v10, v3, :cond_6

    .line 815
    :try_start_4
    iget-object v3, v1, Lcom/shenma/tvlauncher/SettingActActvity;->empower_fens:Landroid/widget/TextView;

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 816
    iget-object v3, v1, Lcom/shenma/tvlauncher/SettingActActvity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 817
    invoke-interface {v3, v2, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 818
    invoke-interface {v3, v0, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 819
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 821
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 822
    .local v3, "format":Ljava/text/SimpleDateFormat;
    iget-object v0, v1, Lcom/shenma/tvlauncher/SettingActActvity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-object v2, v0

    .line 823
    .local v2, "time":Ljava/lang/String;
    const/16 v17, 0x0

    .line 825
    .local v17, "vipstate":I
    :try_start_5
    new-instance v0, Ljava/util/Date;
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    .end local v5    # "RSAKEY":Ljava/lang/String;
    .end local v6    # "AESKEY":Ljava/lang/String;
    .local v18, "RSAKEY":Ljava/lang/String;
    .local v19, "AESKEY":Ljava/lang/String;
    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v2, v4}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v20
    :try_end_6
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    cmp-long v0, v5, v20

    if-gez v0, :cond_3

    .line 826
    const/4 v0, 0x1

    move/from16 v17, v0

    .end local v17    # "vipstate":I
    .local v0, "vipstate":I
    goto :goto_1

    .line 828
    .end local v0    # "vipstate":I
    .restart local v17    # "vipstate":I
    :cond_3
    const/4 v0, 0x0

    move/from16 v17, v0

    .line 832
    :goto_1
    move/from16 v0, v17

    goto :goto_3

    .line 842
    .end local v2    # "time":Ljava/lang/String;
    .end local v3    # "format":Ljava/text/SimpleDateFormat;
    .end local v8    # "jSONObject":Lorg/json/JSONObject;
    .end local v10    # "code":I
    .end local v11    # "msg":Ljava/lang/String;
    .end local v12    # "miType":I
    .end local v13    # "vip":Ljava/lang/String;
    .end local v14    # "jSON":Lorg/json/JSONObject;
    .end local v15    # "fen":Ljava/lang/String;
    .end local v17    # "vipstate":I
    :catch_1
    move-exception v0

    goto :goto_6

    .line 830
    .restart local v2    # "time":Ljava/lang/String;
    .restart local v3    # "format":Ljava/text/SimpleDateFormat;
    .restart local v8    # "jSONObject":Lorg/json/JSONObject;
    .restart local v10    # "code":I
    .restart local v11    # "msg":Ljava/lang/String;
    .restart local v12    # "miType":I
    .restart local v13    # "vip":Ljava/lang/String;
    .restart local v14    # "jSON":Lorg/json/JSONObject;
    .restart local v15    # "fen":Ljava/lang/String;
    .restart local v17    # "vipstate":I
    :catch_2
    move-exception v0

    goto :goto_2

    .end local v18    # "RSAKEY":Ljava/lang/String;
    .end local v19    # "AESKEY":Ljava/lang/String;
    .restart local v5    # "RSAKEY":Ljava/lang/String;
    .restart local v6    # "AESKEY":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    .line 831
    .end local v5    # "RSAKEY":Ljava/lang/String;
    .end local v6    # "AESKEY":Ljava/lang/String;
    .local v0, "e":Ljava/text/ParseException;
    .restart local v18    # "RSAKEY":Ljava/lang/String;
    .restart local v19    # "AESKEY":Ljava/lang/String;
    :goto_2
    :try_start_7
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    move/from16 v0, v17

    .line 833
    .end local v17    # "vipstate":I
    .local v0, "vipstate":I
    :goto_3
    const-string v5, "999999999"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 834
    iget-object v4, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vipTime:Landroid/widget/TextView;

    sget v5, Lcom/shenma/tvlauncher/R$string;->Lifetime_VIP:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 835
    :cond_4
    if-nez v0, :cond_5

    .line 836
    iget-object v4, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vipTime:Landroid/widget/TextView;

    sget v5, Lcom/shenma/tvlauncher/R$string;->Expired:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 837
    :cond_5
    const/4 v5, 0x1

    if-ne v0, v5, :cond_7

    .line 838
    iget-object v5, v1, Lcom/shenma/tvlauncher/SettingActActvity;->vipTime:Landroid/widget/TextView;

    invoke-static {v2, v4}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    .line 842
    .end local v0    # "vipstate":I
    .end local v2    # "time":Ljava/lang/String;
    .end local v3    # "format":Ljava/text/SimpleDateFormat;
    .end local v8    # "jSONObject":Lorg/json/JSONObject;
    .end local v10    # "code":I
    .end local v11    # "msg":Ljava/lang/String;
    .end local v12    # "miType":I
    .end local v13    # "vip":Ljava/lang/String;
    .end local v14    # "jSON":Lorg/json/JSONObject;
    .end local v15    # "fen":Ljava/lang/String;
    .end local v18    # "RSAKEY":Ljava/lang/String;
    .end local v19    # "AESKEY":Ljava/lang/String;
    .restart local v5    # "RSAKEY":Ljava/lang/String;
    .restart local v6    # "AESKEY":Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    .end local v5    # "RSAKEY":Ljava/lang/String;
    .end local v6    # "AESKEY":Ljava/lang/String;
    .restart local v18    # "RSAKEY":Ljava/lang/String;
    .restart local v19    # "AESKEY":Ljava/lang/String;
    goto :goto_6

    .line 814
    .end local v18    # "RSAKEY":Ljava/lang/String;
    .end local v19    # "AESKEY":Ljava/lang/String;
    .restart local v5    # "RSAKEY":Ljava/lang/String;
    .restart local v6    # "AESKEY":Ljava/lang/String;
    .restart local v8    # "jSONObject":Lorg/json/JSONObject;
    .restart local v10    # "code":I
    .restart local v11    # "msg":Ljava/lang/String;
    .restart local v12    # "miType":I
    .restart local v13    # "vip":Ljava/lang/String;
    .restart local v14    # "jSON":Lorg/json/JSONObject;
    .restart local v15    # "fen":Ljava/lang/String;
    :cond_6
    move-object/from16 v18, v5

    move-object/from16 v19, v6

    .line 844
    .end local v5    # "RSAKEY":Ljava/lang/String;
    .end local v6    # "AESKEY":Ljava/lang/String;
    .end local v8    # "jSONObject":Lorg/json/JSONObject;
    .end local v10    # "code":I
    .end local v11    # "msg":Ljava/lang/String;
    .end local v12    # "miType":I
    .end local v13    # "vip":Ljava/lang/String;
    .end local v14    # "jSON":Lorg/json/JSONObject;
    .end local v15    # "fen":Ljava/lang/String;
    .restart local v18    # "RSAKEY":Ljava/lang/String;
    .restart local v19    # "AESKEY":Ljava/lang/String;
    :cond_7
    :goto_4
    goto :goto_7

    .line 842
    .end local v16    # "RC4KEY":Ljava/lang/String;
    .end local v18    # "RSAKEY":Ljava/lang/String;
    .end local v19    # "AESKEY":Ljava/lang/String;
    .local v3, "RC4KEY":Ljava/lang/String;
    .restart local v5    # "RSAKEY":Ljava/lang/String;
    .restart local v6    # "AESKEY":Ljava/lang/String;
    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    move-object/from16 v9, p1

    :goto_5
    move-object/from16 v16, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    .line 843
    .end local v3    # "RC4KEY":Ljava/lang/String;
    .end local v5    # "RSAKEY":Ljava/lang/String;
    .end local v6    # "AESKEY":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "RC4KEY":Ljava/lang/String;
    .restart local v18    # "RSAKEY":Ljava/lang/String;
    .restart local v19    # "AESKEY":Ljava/lang/String;
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 845
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7
    return-void
.end method

.method protected findViewById()V
    .locals 2

    .line 141
    sget v0, Lcom/shenma/tvlauncher/R$id;->empower_codestrs:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->account:Landroid/widget/TextView;

    .line 142
    sget v0, Lcom/shenma/tvlauncher/R$id;->empower_fens:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->empower_fens:Landroid/widget/TextView;

    .line 143
    sget v0, Lcom/shenma/tvlauncher/R$id;->empower_times:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vipTime:Landroid/widget/TextView;

    .line 144
    sget v0, Lcom/shenma/tvlauncher/R$id;->empower_iv_pay_ecode:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->empower_iv_pay_ecode:Landroid/widget/ImageView;

    .line 145
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_goods_1_message:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_1_message:Landroid/widget/TextView;

    .line 146
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_goods_1_title:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_1_title:Landroid/widget/TextView;

    .line 147
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_goods_1_price:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_1_price:Landroid/widget/TextView;

    .line 148
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_root_lin_1:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_root_lin_1:Landroid/widget/LinearLayout;

    .line 149
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_goods_r_1:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_r_1:Landroid/widget/RelativeLayout;

    .line 150
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_goods_gid_1:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_gid_1:Landroid/widget/TextView;

    .line 151
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_goods_2_message:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_2_message:Landroid/widget/TextView;

    .line 152
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_goods_2_title:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_2_title:Landroid/widget/TextView;

    .line 153
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_goods_2_price:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_2_price:Landroid/widget/TextView;

    .line 154
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_root_lin_2:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_root_lin_2:Landroid/widget/LinearLayout;

    .line 155
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_goods_r_2:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_r_2:Landroid/widget/RelativeLayout;

    .line 156
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_goods_gid_2:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_gid_2:Landroid/widget/TextView;

    .line 157
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_goods_3_message:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_3_message:Landroid/widget/TextView;

    .line 158
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_goods_3_title:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_3_title:Landroid/widget/TextView;

    .line 159
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_goods_3_price:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_3_price:Landroid/widget/TextView;

    .line 160
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_root_lin_3:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_root_lin_3:Landroid/widget/LinearLayout;

    .line 161
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_goods_r_3:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_r_3:Landroid/widget/RelativeLayout;

    .line 162
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_goods_gid_3:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_gid_3:Landroid/widget/TextView;

    .line 163
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_goods_4_message:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_4_message:Landroid/widget/TextView;

    .line 164
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_goods_4_title:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_4_title:Landroid/widget/TextView;

    .line 165
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_goods_4_price:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_4_price:Landroid/widget/TextView;

    .line 166
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_root_lin_4:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_root_lin_4:Landroid/widget/LinearLayout;

    .line 167
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_goods_r_4:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_r_4:Landroid/widget/RelativeLayout;

    .line 168
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_goods_gid_4:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_gid_4:Landroid/widget/TextView;

    .line 170
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_root_lin_1:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_r_1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_root_lin_2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_r_2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_root_lin_3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_r_3:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_root_lin_4:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_r_4:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 179
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_root_clock:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_root_clock:Landroid/widget/RelativeLayout;

    .line 180
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_clock:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_clock:Landroid/widget/LinearLayout;

    .line 181
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_root_inv:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_root_inv:Landroid/widget/RelativeLayout;

    .line 182
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_inv:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_inv:Landroid/widget/LinearLayout;

    .line 183
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_ac:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_ac:Landroid/widget/LinearLayout;

    .line 184
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_acno:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_acno:Landroid/widget/TextView;

    .line 185
    sget v0, Lcom/shenma/tvlauncher/R$id;->actishiwenzi:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->actishiwenzi:Landroid/widget/TextView;

    .line 186
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_r_1:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/shenma/tvlauncher/SettingActActvity$2;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/SettingActActvity$2;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_r_2:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/shenma/tvlauncher/SettingActActvity$3;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/SettingActActvity$3;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_r_3:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/shenma/tvlauncher/SettingActActvity$4;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/SettingActActvity$4;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_goods_r_4:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/shenma/tvlauncher/SettingActActvity$5;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/SettingActActvity$5;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_root_clock:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/shenma/tvlauncher/SettingActActvity$6;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/SettingActActvity$6;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vip_root_inv:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/shenma/tvlauncher/SettingActActvity$7;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/SettingActActvity$7;-><init>(Lcom/shenma/tvlauncher/SettingActActvity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    return-void
.end method

.method protected initView()V
    .locals 9

    .line 459
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->account:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 460
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->account:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingActActvity;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "userName"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->empower_fens:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->empower_fens:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/shenma/tvlauncher/SettingActActvity;->sp:Landroid/content/SharedPreferences;

    const-string v5, "fen"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vipTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 465
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->account:Landroid/widget/TextView;

    sget v1, Lcom/shenma/tvlauncher/R$string;->no_login:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 467
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->empower_fens:Landroid/widget/TextView;

    sget v1, Lcom/shenma/tvlauncher/R$string;->no_login:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 468
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vipTime:Landroid/widget/TextView;

    sget v1, Lcom/shenma/tvlauncher/R$string;->no_login:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 469
    return-void

    .line 472
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 473
    .local v0, "format":Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Lcom/shenma/tvlauncher/SettingActActvity;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "vip"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 474
    .local v1, "time":Ljava/lang/String;
    const/4 v2, 0x0

    .line 476
    .local v2, "vipstate":I
    :try_start_0
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v3, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v1, v4}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v7
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v3, v5, v7

    if-gez v3, :cond_1

    .line 477
    const/4 v2, 0x1

    goto :goto_0

    .line 479
    :cond_1
    const/4 v2, 0x0

    .line 483
    :goto_0
    goto :goto_1

    .line 481
    :catch_0
    move-exception v3

    .line 482
    .local v3, "e":Ljava/text/ParseException;
    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    .line 484
    .end local v3    # "e":Ljava/text/ParseException;
    :goto_1
    const-string v3, "999999999"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 485
    iget-object v3, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vipTime:Landroid/widget/TextView;

    sget v4, Lcom/shenma/tvlauncher/R$string;->Lifetime_VIP:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 486
    :cond_2
    if-nez v2, :cond_3

    .line 487
    iget-object v3, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vipTime:Landroid/widget/TextView;

    sget v4, Lcom/shenma/tvlauncher/R$string;->Expired:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 488
    :cond_3
    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 489
    iget-object v3, p0, Lcom/shenma/tvlauncher/SettingActActvity;->vipTime:Landroid/widget/TextView;

    invoke-static {v1, v4}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    :cond_4
    :goto_2
    return-void
.end method

.method protected loadViewLayout()V
    .locals 0

    .line 884
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 879
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onBackPressed()V

    .line 880
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 131
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    sget v0, Lcom/shenma/tvlauncher/R$layout;->layout_setting_act:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingActActvity;->setContentView(I)V

    .line 133
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/SettingActActvity;->findViewById()V

    .line 134
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/SettingActActvity;->initView()V

    .line 135
    invoke-direct {p0}, Lcom/shenma/tvlauncher/SettingActActvity;->initData()V

    .line 136
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 873
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onPause()V

    .line 874
    const-string v0, "SettingActActvity"

    const-string v1, "SettingActActvity....onPause"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 858
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onStart()V

    .line 859
    const-string v0, "SettingActActvity"

    const-string v1, "SettingActActvity....onStart"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 864
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onStop()V

    .line 865
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->mQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingActActvity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 868
    :cond_0
    const-string v0, "SettingActActvity"

    const-string v1, "SettingActActvity....onStop"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    return-void
.end method

.method protected setListener()V
    .locals 0

    .line 854
    return-void
.end method
