.class public final Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;
.super Ljava/lang/Object;
.source "LayoutSettingActBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final actishiwenzi:Landroid/widget/TextView;

.field public final empowerCodestrs:Landroid/widget/TextView;

.field public final empowerFens:Landroid/widget/TextView;

.field public final empowerIvPayEcode:Landroid/widget/ImageView;

.field public final empowerTimes:Landroid/widget/TextView;

.field public final empowers:Landroid/widget/LinearLayout;

.field public final llTypeDetailss:Landroid/widget/LinearLayout;

.field public final rlActives:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final vipAc:Landroid/widget/LinearLayout;

.field public final vipAcno:Landroid/widget/TextView;

.field public final vipClock:Landroid/widget/LinearLayout;

.field public final vipGoods1Message:Landroid/widget/TextView;

.field public final vipGoods1Price:Landroid/widget/TextView;

.field public final vipGoods1Title:Landroid/widget/TextView;

.field public final vipGoods2Message:Landroid/widget/TextView;

.field public final vipGoods2Price:Landroid/widget/TextView;

.field public final vipGoods2Title:Landroid/widget/TextView;

.field public final vipGoods3Message:Landroid/widget/TextView;

.field public final vipGoods3Price:Landroid/widget/TextView;

.field public final vipGoods3Title:Landroid/widget/TextView;

.field public final vipGoods4Message:Landroid/widget/TextView;

.field public final vipGoods4Price:Landroid/widget/TextView;

.field public final vipGoods4Title:Landroid/widget/TextView;

.field public final vipGoodsGid1:Landroid/widget/TextView;

.field public final vipGoodsGid2:Landroid/widget/TextView;

.field public final vipGoodsGid3:Landroid/widget/TextView;

.field public final vipGoodsGid4:Landroid/widget/TextView;

.field public final vipGoodsR1:Landroid/widget/RelativeLayout;

.field public final vipGoodsR2:Landroid/widget/RelativeLayout;

.field public final vipGoodsR3:Landroid/widget/RelativeLayout;

.field public final vipGoodsR4:Landroid/widget/RelativeLayout;

.field public final vipInv:Landroid/widget/LinearLayout;

.field public final vipRootClock:Landroid/widget/RelativeLayout;

.field public final vipRootInv:Landroid/widget/RelativeLayout;

.field public final vipRootLin1:Landroid/widget/LinearLayout;

.field public final vipRootLin2:Landroid/widget/LinearLayout;

.field public final vipRootLin3:Landroid/widget/LinearLayout;

.field public final vipRootLin4:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 16
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "actishiwenzi"    # Landroid/widget/TextView;
    .param p3, "empowerCodestrs"    # Landroid/widget/TextView;
    .param p4, "empowerFens"    # Landroid/widget/TextView;
    .param p5, "empowerIvPayEcode"    # Landroid/widget/ImageView;
    .param p6, "empowerTimes"    # Landroid/widget/TextView;
    .param p7, "empowers"    # Landroid/widget/LinearLayout;
    .param p8, "llTypeDetailss"    # Landroid/widget/LinearLayout;
    .param p9, "rlActives"    # Landroid/widget/LinearLayout;
    .param p10, "vipAc"    # Landroid/widget/LinearLayout;
    .param p11, "vipAcno"    # Landroid/widget/TextView;
    .param p12, "vipClock"    # Landroid/widget/LinearLayout;
    .param p13, "vipGoods1Message"    # Landroid/widget/TextView;
    .param p14, "vipGoods1Price"    # Landroid/widget/TextView;
    .param p15, "vipGoods1Title"    # Landroid/widget/TextView;
    .param p16, "vipGoods2Message"    # Landroid/widget/TextView;
    .param p17, "vipGoods2Price"    # Landroid/widget/TextView;
    .param p18, "vipGoods2Title"    # Landroid/widget/TextView;
    .param p19, "vipGoods3Message"    # Landroid/widget/TextView;
    .param p20, "vipGoods3Price"    # Landroid/widget/TextView;
    .param p21, "vipGoods3Title"    # Landroid/widget/TextView;
    .param p22, "vipGoods4Message"    # Landroid/widget/TextView;
    .param p23, "vipGoods4Price"    # Landroid/widget/TextView;
    .param p24, "vipGoods4Title"    # Landroid/widget/TextView;
    .param p25, "vipGoodsGid1"    # Landroid/widget/TextView;
    .param p26, "vipGoodsGid2"    # Landroid/widget/TextView;
    .param p27, "vipGoodsGid3"    # Landroid/widget/TextView;
    .param p28, "vipGoodsGid4"    # Landroid/widget/TextView;
    .param p29, "vipGoodsR1"    # Landroid/widget/RelativeLayout;
    .param p30, "vipGoodsR2"    # Landroid/widget/RelativeLayout;
    .param p31, "vipGoodsR3"    # Landroid/widget/RelativeLayout;
    .param p32, "vipGoodsR4"    # Landroid/widget/RelativeLayout;
    .param p33, "vipInv"    # Landroid/widget/LinearLayout;
    .param p34, "vipRootClock"    # Landroid/widget/RelativeLayout;
    .param p35, "vipRootInv"    # Landroid/widget/RelativeLayout;
    .param p36, "vipRootLin1"    # Landroid/widget/LinearLayout;
    .param p37, "vipRootLin2"    # Landroid/widget/LinearLayout;
    .param p38, "vipRootLin3"    # Landroid/widget/LinearLayout;
    .param p39, "vipRootLin4"    # Landroid/widget/LinearLayout;

    .line 156
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 157
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;->rootView:Landroid/widget/LinearLayout;

    .line 158
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;->actishiwenzi:Landroid/widget/TextView;

    .line 159
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;->empowerCodestrs:Landroid/widget/TextView;

    .line 160
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;->empowerFens:Landroid/widget/TextView;

    .line 161
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;->empowerIvPayEcode:Landroid/widget/ImageView;

    .line 162
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;->empowerTimes:Landroid/widget/TextView;

    .line 163
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;->empowers:Landroid/widget/LinearLayout;

    .line 164
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;->llTypeDetailss:Landroid/widget/LinearLayout;

    .line 165
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;->rlActives:Landroid/widget/LinearLayout;

    .line 166
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;->vipAc:Landroid/widget/LinearLayout;

    .line 167
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;->vipAcno:Landroid/widget/TextView;

    .line 168
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;->vipClock:Landroid/widget/LinearLayout;

    .line 169
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;->vipGoods1Message:Landroid/widget/TextView;

    .line 170
    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;->vipGoods1Price:Landroid/widget/TextView;

    .line 171
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;->vipGoods1Title:Landroid/widget/TextView;

    .line 172
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;->vipGoods2Message:Landroid/widget/TextView;

    .line 173
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;->vipGoods2Price:Landroid/widget/TextView;

    .line 174
    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;->vipGoods2Title:Landroid/widget/TextView;

    .line 175
    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;->vipGoods3Message:Landroid/widget/TextView;

    .line 176
    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;->vipGoods3Price:Landroid/widget/TextView;

    .line 177
    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;->vipGoods3Title:Landroid/widget/TextView;

    .line 178
    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;->vipGoods4Message:Landroid/widget/TextView;

    .line 179
    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;->vipGoods4Price:Landroid/widget/TextView;

    .line 180
    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;->vipGoods4Title:Landroid/widget/TextView;

    .line 181
    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;->vipGoodsGid1:Landroid/widget/TextView;

    .line 182
    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;->vipGoodsGid2:Landroid/widget/TextView;

    .line 183
    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;->vipGoodsGid3:Landroid/widget/TextView;

    .line 184
    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;->vipGoodsGid4:Landroid/widget/TextView;

    .line 185
    move-object/from16 v1, p29

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;->vipGoodsR1:Landroid/widget/RelativeLayout;

    .line 186
    move-object/from16 v1, p30

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;->vipGoodsR2:Landroid/widget/RelativeLayout;

    .line 187
    move-object/from16 v1, p31

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;->vipGoodsR3:Landroid/widget/RelativeLayout;

    .line 188
    move-object/from16 v1, p32

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;->vipGoodsR4:Landroid/widget/RelativeLayout;

    .line 189
    move-object/from16 v1, p33

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;->vipInv:Landroid/widget/LinearLayout;

    .line 190
    move-object/from16 v1, p34

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;->vipRootClock:Landroid/widget/RelativeLayout;

    .line 191
    move-object/from16 v1, p35

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;->vipRootInv:Landroid/widget/RelativeLayout;

    .line 192
    move-object/from16 v1, p36

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;->vipRootLin1:Landroid/widget/LinearLayout;

    .line 193
    move-object/from16 v1, p37

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;->vipRootLin2:Landroid/widget/LinearLayout;

    .line 194
    move-object/from16 v1, p38

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;->vipRootLin3:Landroid/widget/LinearLayout;

    .line 195
    move-object/from16 v1, p39

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;->vipRootLin4:Landroid/widget/LinearLayout;

    .line 196
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;
    .locals 43
    .param p0, "rootView"    # Landroid/view/View;

    .line 225
    move-object/from16 v0, p0

    sget v1, Lcom/shenma/tvlauncher/R$id;->actishiwenzi:I

    .line 226
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    .line 227
    .local v5, "actishiwenzi":Landroid/widget/TextView;
    if-eqz v5, :cond_24

    .line 231
    sget v1, Lcom/shenma/tvlauncher/R$id;->empower_codestrs:I

    .line 232
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    .line 233
    .local v6, "empowerCodestrs":Landroid/widget/TextView;
    if-eqz v6, :cond_23

    .line 237
    sget v1, Lcom/shenma/tvlauncher/R$id;->empower_fens:I

    .line 238
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    .line 239
    .local v7, "empowerFens":Landroid/widget/TextView;
    if-eqz v7, :cond_22

    .line 243
    sget v1, Lcom/shenma/tvlauncher/R$id;->empower_iv_pay_ecode:I

    .line 244
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    .line 245
    .local v8, "empowerIvPayEcode":Landroid/widget/ImageView;
    if-eqz v8, :cond_21

    .line 249
    sget v1, Lcom/shenma/tvlauncher/R$id;->empower_times:I

    .line 250
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    .line 251
    .local v9, "empowerTimes":Landroid/widget/TextView;
    if-eqz v9, :cond_20

    .line 255
    move-object v10, v0

    check-cast v10, Landroid/widget/LinearLayout;

    .line 257
    .local v10, "empowers":Landroid/widget/LinearLayout;
    sget v1, Lcom/shenma/tvlauncher/R$id;->ll_type_detailss:I

    .line 258
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/LinearLayout;

    .line 259
    .local v11, "llTypeDetailss":Landroid/widget/LinearLayout;
    if-eqz v11, :cond_1f

    .line 263
    sget v1, Lcom/shenma/tvlauncher/R$id;->rl_actives:I

    .line 264
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/LinearLayout;

    .line 265
    .local v12, "rlActives":Landroid/widget/LinearLayout;
    if-eqz v12, :cond_1e

    .line 269
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_ac:I

    .line 270
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/LinearLayout;

    .line 271
    .local v13, "vipAc":Landroid/widget/LinearLayout;
    if-eqz v13, :cond_1d

    .line 275
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_acno:I

    .line 276
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    .line 277
    .local v14, "vipAcno":Landroid/widget/TextView;
    if-eqz v14, :cond_1c

    .line 281
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_clock:I

    .line 282
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/LinearLayout;

    .line 283
    .local v15, "vipClock":Landroid/widget/LinearLayout;
    if-eqz v15, :cond_1b

    .line 287
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_goods_1_message:I

    .line 288
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    .line 289
    .local v16, "vipGoods1Message":Landroid/widget/TextView;
    if-eqz v16, :cond_1a

    .line 293
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_goods_1_price:I

    .line 294
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    .line 295
    .local v17, "vipGoods1Price":Landroid/widget/TextView;
    if-eqz v17, :cond_19

    .line 299
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_goods_1_title:I

    .line 300
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    .line 301
    .local v18, "vipGoods1Title":Landroid/widget/TextView;
    if-eqz v18, :cond_18

    .line 305
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_goods_2_message:I

    .line 306
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    .line 307
    .local v19, "vipGoods2Message":Landroid/widget/TextView;
    if-eqz v19, :cond_17

    .line 311
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_goods_2_price:I

    .line 312
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    .line 313
    .local v20, "vipGoods2Price":Landroid/widget/TextView;
    if-eqz v20, :cond_16

    .line 317
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_goods_2_title:I

    .line 318
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    .line 319
    .local v21, "vipGoods2Title":Landroid/widget/TextView;
    if-eqz v21, :cond_15

    .line 323
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_goods_3_message:I

    .line 324
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/TextView;

    .line 325
    .local v22, "vipGoods3Message":Landroid/widget/TextView;
    if-eqz v22, :cond_14

    .line 329
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_goods_3_price:I

    .line 330
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroid/widget/TextView;

    .line 331
    .local v23, "vipGoods3Price":Landroid/widget/TextView;
    if-eqz v23, :cond_13

    .line 335
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_goods_3_title:I

    .line 336
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Landroid/widget/TextView;

    .line 337
    .local v24, "vipGoods3Title":Landroid/widget/TextView;
    if-eqz v24, :cond_12

    .line 341
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_goods_4_message:I

    .line 342
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Landroid/widget/TextView;

    .line 343
    .local v25, "vipGoods4Message":Landroid/widget/TextView;
    if-eqz v25, :cond_11

    .line 347
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_goods_4_price:I

    .line 348
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Landroid/widget/TextView;

    .line 349
    .local v26, "vipGoods4Price":Landroid/widget/TextView;
    if-eqz v26, :cond_10

    .line 353
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_goods_4_title:I

    .line 354
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Landroid/widget/TextView;

    .line 355
    .local v27, "vipGoods4Title":Landroid/widget/TextView;
    if-eqz v27, :cond_f

    .line 359
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_goods_gid_1:I

    .line 360
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v28, v2

    check-cast v28, Landroid/widget/TextView;

    .line 361
    .local v28, "vipGoodsGid1":Landroid/widget/TextView;
    if-eqz v28, :cond_e

    .line 365
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_goods_gid_2:I

    .line 366
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v29, v2

    check-cast v29, Landroid/widget/TextView;

    .line 367
    .local v29, "vipGoodsGid2":Landroid/widget/TextView;
    if-eqz v29, :cond_d

    .line 371
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_goods_gid_3:I

    .line 372
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v30, v2

    check-cast v30, Landroid/widget/TextView;

    .line 373
    .local v30, "vipGoodsGid3":Landroid/widget/TextView;
    if-eqz v30, :cond_c

    .line 377
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_goods_gid_4:I

    .line 378
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v31, v2

    check-cast v31, Landroid/widget/TextView;

    .line 379
    .local v31, "vipGoodsGid4":Landroid/widget/TextView;
    if-eqz v31, :cond_b

    .line 383
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_goods_r_1:I

    .line 384
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v32, v2

    check-cast v32, Landroid/widget/RelativeLayout;

    .line 385
    .local v32, "vipGoodsR1":Landroid/widget/RelativeLayout;
    if-eqz v32, :cond_a

    .line 389
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_goods_r_2:I

    .line 390
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v33, v2

    check-cast v33, Landroid/widget/RelativeLayout;

    .line 391
    .local v33, "vipGoodsR2":Landroid/widget/RelativeLayout;
    if-eqz v33, :cond_9

    .line 395
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_goods_r_3:I

    .line 396
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v34, v2

    check-cast v34, Landroid/widget/RelativeLayout;

    .line 397
    .local v34, "vipGoodsR3":Landroid/widget/RelativeLayout;
    if-eqz v34, :cond_8

    .line 401
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_goods_r_4:I

    .line 402
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v35, v2

    check-cast v35, Landroid/widget/RelativeLayout;

    .line 403
    .local v35, "vipGoodsR4":Landroid/widget/RelativeLayout;
    if-eqz v35, :cond_7

    .line 407
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_inv:I

    .line 408
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v36, v2

    check-cast v36, Landroid/widget/LinearLayout;

    .line 409
    .local v36, "vipInv":Landroid/widget/LinearLayout;
    if-eqz v36, :cond_6

    .line 413
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_root_clock:I

    .line 414
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v37, v2

    check-cast v37, Landroid/widget/RelativeLayout;

    .line 415
    .local v37, "vipRootClock":Landroid/widget/RelativeLayout;
    if-eqz v37, :cond_5

    .line 419
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_root_inv:I

    .line 420
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v38, v2

    check-cast v38, Landroid/widget/RelativeLayout;

    .line 421
    .local v38, "vipRootInv":Landroid/widget/RelativeLayout;
    if-eqz v38, :cond_4

    .line 425
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_root_lin_1:I

    .line 426
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v39, v2

    check-cast v39, Landroid/widget/LinearLayout;

    .line 427
    .local v39, "vipRootLin1":Landroid/widget/LinearLayout;
    if-eqz v39, :cond_3

    .line 431
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_root_lin_2:I

    .line 432
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v40, v2

    check-cast v40, Landroid/widget/LinearLayout;

    .line 433
    .local v40, "vipRootLin2":Landroid/widget/LinearLayout;
    if-eqz v40, :cond_2

    .line 437
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_root_lin_3:I

    .line 438
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v41, v2

    check-cast v41, Landroid/widget/LinearLayout;

    .line 439
    .local v41, "vipRootLin3":Landroid/widget/LinearLayout;
    if-eqz v41, :cond_1

    .line 443
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_root_lin_4:I

    .line 444
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v42, v2

    check-cast v42, Landroid/widget/LinearLayout;

    .line 445
    .local v42, "vipRootLin4":Landroid/widget/LinearLayout;
    if-eqz v42, :cond_0

    .line 449
    new-instance v3, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-direct/range {v3 .. v42}, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    return-object v3

    .line 446
    :cond_0
    goto :goto_0

    .line 440
    .end local v42    # "vipRootLin4":Landroid/widget/LinearLayout;
    :cond_1
    goto :goto_0

    .line 434
    .end local v41    # "vipRootLin3":Landroid/widget/LinearLayout;
    :cond_2
    goto :goto_0

    .line 428
    .end local v40    # "vipRootLin2":Landroid/widget/LinearLayout;
    :cond_3
    goto :goto_0

    .line 422
    .end local v39    # "vipRootLin1":Landroid/widget/LinearLayout;
    :cond_4
    goto :goto_0

    .line 416
    .end local v38    # "vipRootInv":Landroid/widget/RelativeLayout;
    :cond_5
    goto :goto_0

    .line 410
    .end local v37    # "vipRootClock":Landroid/widget/RelativeLayout;
    :cond_6
    goto :goto_0

    .line 404
    .end local v36    # "vipInv":Landroid/widget/LinearLayout;
    :cond_7
    goto :goto_0

    .line 398
    .end local v35    # "vipGoodsR4":Landroid/widget/RelativeLayout;
    :cond_8
    goto :goto_0

    .line 392
    .end local v34    # "vipGoodsR3":Landroid/widget/RelativeLayout;
    :cond_9
    goto :goto_0

    .line 386
    .end local v33    # "vipGoodsR2":Landroid/widget/RelativeLayout;
    :cond_a
    goto :goto_0

    .line 380
    .end local v32    # "vipGoodsR1":Landroid/widget/RelativeLayout;
    :cond_b
    goto :goto_0

    .line 374
    .end local v31    # "vipGoodsGid4":Landroid/widget/TextView;
    :cond_c
    goto :goto_0

    .line 368
    .end local v30    # "vipGoodsGid3":Landroid/widget/TextView;
    :cond_d
    goto :goto_0

    .line 362
    .end local v29    # "vipGoodsGid2":Landroid/widget/TextView;
    :cond_e
    goto :goto_0

    .line 356
    .end local v28    # "vipGoodsGid1":Landroid/widget/TextView;
    :cond_f
    goto :goto_0

    .line 350
    .end local v27    # "vipGoods4Title":Landroid/widget/TextView;
    :cond_10
    goto :goto_0

    .line 344
    .end local v26    # "vipGoods4Price":Landroid/widget/TextView;
    :cond_11
    goto :goto_0

    .line 338
    .end local v25    # "vipGoods4Message":Landroid/widget/TextView;
    :cond_12
    goto :goto_0

    .line 332
    .end local v24    # "vipGoods3Title":Landroid/widget/TextView;
    :cond_13
    goto :goto_0

    .line 326
    .end local v23    # "vipGoods3Price":Landroid/widget/TextView;
    :cond_14
    goto :goto_0

    .line 320
    .end local v22    # "vipGoods3Message":Landroid/widget/TextView;
    :cond_15
    goto :goto_0

    .line 314
    .end local v21    # "vipGoods2Title":Landroid/widget/TextView;
    :cond_16
    goto :goto_0

    .line 308
    .end local v20    # "vipGoods2Price":Landroid/widget/TextView;
    :cond_17
    goto :goto_0

    .line 302
    .end local v19    # "vipGoods2Message":Landroid/widget/TextView;
    :cond_18
    goto :goto_0

    .line 296
    .end local v18    # "vipGoods1Title":Landroid/widget/TextView;
    :cond_19
    goto :goto_0

    .line 290
    .end local v17    # "vipGoods1Price":Landroid/widget/TextView;
    :cond_1a
    goto :goto_0

    .line 284
    .end local v16    # "vipGoods1Message":Landroid/widget/TextView;
    :cond_1b
    goto :goto_0

    .line 278
    .end local v15    # "vipClock":Landroid/widget/LinearLayout;
    :cond_1c
    goto :goto_0

    .line 272
    .end local v14    # "vipAcno":Landroid/widget/TextView;
    :cond_1d
    goto :goto_0

    .line 266
    .end local v13    # "vipAc":Landroid/widget/LinearLayout;
    :cond_1e
    goto :goto_0

    .line 260
    .end local v12    # "rlActives":Landroid/widget/LinearLayout;
    :cond_1f
    goto :goto_0

    .line 252
    .end local v10    # "empowers":Landroid/widget/LinearLayout;
    .end local v11    # "llTypeDetailss":Landroid/widget/LinearLayout;
    :cond_20
    goto :goto_0

    .line 246
    .end local v9    # "empowerTimes":Landroid/widget/TextView;
    :cond_21
    goto :goto_0

    .line 240
    .end local v8    # "empowerIvPayEcode":Landroid/widget/ImageView;
    :cond_22
    goto :goto_0

    .line 234
    .end local v7    # "empowerFens":Landroid/widget/TextView;
    :cond_23
    goto :goto_0

    .line 228
    .end local v6    # "empowerCodestrs":Landroid/widget/TextView;
    :cond_24
    nop

    .line 457
    .end local v5    # "actishiwenzi":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 458
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 206
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 212
    sget v0, Lcom/shenma/tvlauncher/R$layout;->layout_setting_act:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 213
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 214
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 216
    :cond_0
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/LayoutSettingActBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
