.class public final Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;
.super Ljava/lang/Object;
.source "LayoutEmpowerBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final boxLayout:Landroid/widget/RelativeLayout;

.field public final delerweima:Landroid/widget/LinearLayout;

.field public final empower:Landroid/widget/FrameLayout;

.field public final empowerBtnSendCode:Landroid/widget/Button;

.field public final empowerCode:Landroid/widget/TextView;

.field public final empowerCodefen:Landroid/widget/TextView;

.field public final empowerCodestr:Landroid/widget/TextView;

.field public final empowerFen:Landroid/widget/TextView;

.field public final empowerIvPayEcode:Landroid/widget/ImageView;

.field public final empowerPayText:Landroid/widget/TextView;

.field public final empowerSearch:Landroid/widget/TextView;

.field public final empowerSearchKeybordInput:Landroid/widget/EditText;

.field public final empowerState:Landroid/widget/TextView;

.field public final empowerTime:Landroid/widget/TextView;

.field public final ivLiftlongMember:Landroid/widget/ImageView;

.field public final ivLine760:Landroid/widget/ImageView;

.field public final kmviewlayout:Landroid/widget/LinearLayout;

.field public final llTypeDetails:Landroid/widget/LinearLayout;

.field public final payviewlayout:Landroid/widget/LinearLayout;

.field public final qrCodeText:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final scanLine:Landroid/widget/ImageView;

.field public final typeDetails:Landroid/widget/LinearLayout;

.field public final vipCard:Landroid/widget/LinearLayout;

.field public final vipConvert:Landroid/widget/LinearLayout;

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

.field public final vipRootCard:Landroid/widget/RelativeLayout;

.field public final vipRootFen:Landroid/widget/RelativeLayout;

.field public final vipRootLin1:Landroid/widget/LinearLayout;

.field public final vipRootLin2:Landroid/widget/LinearLayout;

.field public final vipRootLin3:Landroid/widget/LinearLayout;

.field public final vipRootLin4:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 16
    .param p1, "rootView"    # Landroid/widget/FrameLayout;
    .param p2, "boxLayout"    # Landroid/widget/RelativeLayout;
    .param p3, "delerweima"    # Landroid/widget/LinearLayout;
    .param p4, "empower"    # Landroid/widget/FrameLayout;
    .param p5, "empowerBtnSendCode"    # Landroid/widget/Button;
    .param p6, "empowerCode"    # Landroid/widget/TextView;
    .param p7, "empowerCodefen"    # Landroid/widget/TextView;
    .param p8, "empowerCodestr"    # Landroid/widget/TextView;
    .param p9, "empowerFen"    # Landroid/widget/TextView;
    .param p10, "empowerIvPayEcode"    # Landroid/widget/ImageView;
    .param p11, "empowerPayText"    # Landroid/widget/TextView;
    .param p12, "empowerSearch"    # Landroid/widget/TextView;
    .param p13, "empowerSearchKeybordInput"    # Landroid/widget/EditText;
    .param p14, "empowerState"    # Landroid/widget/TextView;
    .param p15, "empowerTime"    # Landroid/widget/TextView;
    .param p16, "ivLiftlongMember"    # Landroid/widget/ImageView;
    .param p17, "ivLine760"    # Landroid/widget/ImageView;
    .param p18, "kmviewlayout"    # Landroid/widget/LinearLayout;
    .param p19, "llTypeDetails"    # Landroid/widget/LinearLayout;
    .param p20, "payviewlayout"    # Landroid/widget/LinearLayout;
    .param p21, "qrCodeText"    # Landroid/widget/TextView;
    .param p22, "scanLine"    # Landroid/widget/ImageView;
    .param p23, "typeDetails"    # Landroid/widget/LinearLayout;
    .param p24, "vipCard"    # Landroid/widget/LinearLayout;
    .param p25, "vipConvert"    # Landroid/widget/LinearLayout;
    .param p26, "vipGoods1Message"    # Landroid/widget/TextView;
    .param p27, "vipGoods1Price"    # Landroid/widget/TextView;
    .param p28, "vipGoods1Title"    # Landroid/widget/TextView;
    .param p29, "vipGoods2Message"    # Landroid/widget/TextView;
    .param p30, "vipGoods2Price"    # Landroid/widget/TextView;
    .param p31, "vipGoods2Title"    # Landroid/widget/TextView;
    .param p32, "vipGoods3Message"    # Landroid/widget/TextView;
    .param p33, "vipGoods3Price"    # Landroid/widget/TextView;
    .param p34, "vipGoods3Title"    # Landroid/widget/TextView;
    .param p35, "vipGoods4Message"    # Landroid/widget/TextView;
    .param p36, "vipGoods4Price"    # Landroid/widget/TextView;
    .param p37, "vipGoods4Title"    # Landroid/widget/TextView;
    .param p38, "vipGoodsGid1"    # Landroid/widget/TextView;
    .param p39, "vipGoodsGid2"    # Landroid/widget/TextView;
    .param p40, "vipGoodsGid3"    # Landroid/widget/TextView;
    .param p41, "vipGoodsGid4"    # Landroid/widget/TextView;
    .param p42, "vipGoodsR1"    # Landroid/widget/RelativeLayout;
    .param p43, "vipGoodsR2"    # Landroid/widget/RelativeLayout;
    .param p44, "vipGoodsR3"    # Landroid/widget/RelativeLayout;
    .param p45, "vipGoodsR4"    # Landroid/widget/RelativeLayout;
    .param p46, "vipRootCard"    # Landroid/widget/RelativeLayout;
    .param p47, "vipRootFen"    # Landroid/widget/RelativeLayout;
    .param p48, "vipRootLin1"    # Landroid/widget/LinearLayout;
    .param p49, "vipRootLin2"    # Landroid/widget/LinearLayout;
    .param p50, "vipRootLin3"    # Landroid/widget/LinearLayout;
    .param p51, "vipRootLin4"    # Landroid/widget/LinearLayout;

    .line 201
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 202
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->rootView:Landroid/widget/FrameLayout;

    .line 203
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->boxLayout:Landroid/widget/RelativeLayout;

    .line 204
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->delerweima:Landroid/widget/LinearLayout;

    .line 205
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->empower:Landroid/widget/FrameLayout;

    .line 206
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->empowerBtnSendCode:Landroid/widget/Button;

    .line 207
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->empowerCode:Landroid/widget/TextView;

    .line 208
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->empowerCodefen:Landroid/widget/TextView;

    .line 209
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->empowerCodestr:Landroid/widget/TextView;

    .line 210
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->empowerFen:Landroid/widget/TextView;

    .line 211
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->empowerIvPayEcode:Landroid/widget/ImageView;

    .line 212
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->empowerPayText:Landroid/widget/TextView;

    .line 213
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->empowerSearch:Landroid/widget/TextView;

    .line 214
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->empowerSearchKeybordInput:Landroid/widget/EditText;

    .line 215
    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->empowerState:Landroid/widget/TextView;

    .line 216
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->empowerTime:Landroid/widget/TextView;

    .line 217
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->ivLiftlongMember:Landroid/widget/ImageView;

    .line 218
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->ivLine760:Landroid/widget/ImageView;

    .line 219
    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->kmviewlayout:Landroid/widget/LinearLayout;

    .line 220
    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->llTypeDetails:Landroid/widget/LinearLayout;

    .line 221
    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->payviewlayout:Landroid/widget/LinearLayout;

    .line 222
    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->qrCodeText:Landroid/widget/TextView;

    .line 223
    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->scanLine:Landroid/widget/ImageView;

    .line 224
    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->typeDetails:Landroid/widget/LinearLayout;

    .line 225
    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->vipCard:Landroid/widget/LinearLayout;

    .line 226
    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->vipConvert:Landroid/widget/LinearLayout;

    .line 227
    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->vipGoods1Message:Landroid/widget/TextView;

    .line 228
    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->vipGoods1Price:Landroid/widget/TextView;

    .line 229
    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->vipGoods1Title:Landroid/widget/TextView;

    .line 230
    move-object/from16 v1, p29

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->vipGoods2Message:Landroid/widget/TextView;

    .line 231
    move-object/from16 v1, p30

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->vipGoods2Price:Landroid/widget/TextView;

    .line 232
    move-object/from16 v1, p31

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->vipGoods2Title:Landroid/widget/TextView;

    .line 233
    move-object/from16 v1, p32

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->vipGoods3Message:Landroid/widget/TextView;

    .line 234
    move-object/from16 v1, p33

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->vipGoods3Price:Landroid/widget/TextView;

    .line 235
    move-object/from16 v1, p34

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->vipGoods3Title:Landroid/widget/TextView;

    .line 236
    move-object/from16 v1, p35

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->vipGoods4Message:Landroid/widget/TextView;

    .line 237
    move-object/from16 v1, p36

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->vipGoods4Price:Landroid/widget/TextView;

    .line 238
    move-object/from16 v1, p37

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->vipGoods4Title:Landroid/widget/TextView;

    .line 239
    move-object/from16 v1, p38

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->vipGoodsGid1:Landroid/widget/TextView;

    .line 240
    move-object/from16 v1, p39

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->vipGoodsGid2:Landroid/widget/TextView;

    .line 241
    move-object/from16 v1, p40

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->vipGoodsGid3:Landroid/widget/TextView;

    .line 242
    move-object/from16 v1, p41

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->vipGoodsGid4:Landroid/widget/TextView;

    .line 243
    move-object/from16 v1, p42

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->vipGoodsR1:Landroid/widget/RelativeLayout;

    .line 244
    move-object/from16 v1, p43

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->vipGoodsR2:Landroid/widget/RelativeLayout;

    .line 245
    move-object/from16 v1, p44

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->vipGoodsR3:Landroid/widget/RelativeLayout;

    .line 246
    move-object/from16 v1, p45

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->vipGoodsR4:Landroid/widget/RelativeLayout;

    .line 247
    move-object/from16 v1, p46

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->vipRootCard:Landroid/widget/RelativeLayout;

    .line 248
    move-object/from16 v1, p47

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->vipRootFen:Landroid/widget/RelativeLayout;

    .line 249
    move-object/from16 v1, p48

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->vipRootLin1:Landroid/widget/LinearLayout;

    .line 250
    move-object/from16 v1, p49

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->vipRootLin2:Landroid/widget/LinearLayout;

    .line 251
    move-object/from16 v1, p50

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->vipRootLin3:Landroid/widget/LinearLayout;

    .line 252
    move-object/from16 v1, p51

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->vipRootLin4:Landroid/widget/LinearLayout;

    .line 253
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;
    .locals 55
    .param p0, "rootView"    # Landroid/view/View;

    .line 282
    move-object/from16 v0, p0

    sget v1, Lcom/shenma/tvlauncher/R$id;->box_layout:I

    .line 283
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 284
    .local v5, "boxLayout":Landroid/widget/RelativeLayout;
    if-eqz v5, :cond_30

    .line 288
    sget v1, Lcom/shenma/tvlauncher/R$id;->delerweima:I

    .line 289
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/LinearLayout;

    .line 290
    .local v6, "delerweima":Landroid/widget/LinearLayout;
    if-eqz v6, :cond_2f

    .line 294
    move-object v7, v0

    check-cast v7, Landroid/widget/FrameLayout;

    .line 296
    .local v7, "empower":Landroid/widget/FrameLayout;
    sget v1, Lcom/shenma/tvlauncher/R$id;->empower_btn_sendCode:I

    .line 297
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/Button;

    .line 298
    .local v8, "empowerBtnSendCode":Landroid/widget/Button;
    if-eqz v8, :cond_2e

    .line 302
    sget v1, Lcom/shenma/tvlauncher/R$id;->empower_code:I

    .line 303
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    .line 304
    .local v9, "empowerCode":Landroid/widget/TextView;
    if-eqz v9, :cond_2d

    .line 308
    sget v1, Lcom/shenma/tvlauncher/R$id;->empower_codefen:I

    .line 309
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    .line 310
    .local v10, "empowerCodefen":Landroid/widget/TextView;
    if-eqz v10, :cond_2c

    .line 314
    sget v1, Lcom/shenma/tvlauncher/R$id;->empower_codestr:I

    .line 315
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    .line 316
    .local v11, "empowerCodestr":Landroid/widget/TextView;
    if-eqz v11, :cond_2b

    .line 320
    sget v1, Lcom/shenma/tvlauncher/R$id;->empower_fen:I

    .line 321
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    .line 322
    .local v12, "empowerFen":Landroid/widget/TextView;
    if-eqz v12, :cond_2a

    .line 326
    sget v1, Lcom/shenma/tvlauncher/R$id;->empower_iv_pay_ecode:I

    .line 327
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/ImageView;

    .line 328
    .local v13, "empowerIvPayEcode":Landroid/widget/ImageView;
    if-eqz v13, :cond_29

    .line 332
    sget v1, Lcom/shenma/tvlauncher/R$id;->empower_pay_text:I

    .line 333
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    .line 334
    .local v14, "empowerPayText":Landroid/widget/TextView;
    if-eqz v14, :cond_28

    .line 338
    sget v1, Lcom/shenma/tvlauncher/R$id;->empower_search:I

    .line 339
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    .line 340
    .local v15, "empowerSearch":Landroid/widget/TextView;
    if-eqz v15, :cond_27

    .line 344
    sget v1, Lcom/shenma/tvlauncher/R$id;->empower_search_keybord_input:I

    .line 345
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/EditText;

    .line 346
    .local v16, "empowerSearchKeybordInput":Landroid/widget/EditText;
    if-eqz v16, :cond_26

    .line 350
    sget v1, Lcom/shenma/tvlauncher/R$id;->empower_state:I

    .line 351
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    .line 352
    .local v17, "empowerState":Landroid/widget/TextView;
    if-eqz v17, :cond_25

    .line 356
    sget v1, Lcom/shenma/tvlauncher/R$id;->empower_time:I

    .line 357
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    .line 358
    .local v18, "empowerTime":Landroid/widget/TextView;
    if-eqz v18, :cond_24

    .line 362
    sget v1, Lcom/shenma/tvlauncher/R$id;->iv_liftlong_member:I

    .line 363
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/ImageView;

    .line 364
    .local v19, "ivLiftlongMember":Landroid/widget/ImageView;
    if-eqz v19, :cond_23

    .line 368
    sget v1, Lcom/shenma/tvlauncher/R$id;->iv_line760:I

    .line 369
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/ImageView;

    .line 370
    .local v20, "ivLine760":Landroid/widget/ImageView;
    if-eqz v20, :cond_22

    .line 374
    sget v1, Lcom/shenma/tvlauncher/R$id;->kmviewlayout:I

    .line 375
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/LinearLayout;

    .line 376
    .local v21, "kmviewlayout":Landroid/widget/LinearLayout;
    if-eqz v21, :cond_21

    .line 380
    sget v1, Lcom/shenma/tvlauncher/R$id;->ll_type_details:I

    .line 381
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/LinearLayout;

    .line 382
    .local v22, "llTypeDetails":Landroid/widget/LinearLayout;
    if-eqz v22, :cond_20

    .line 386
    sget v1, Lcom/shenma/tvlauncher/R$id;->payviewlayout:I

    .line 387
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroid/widget/LinearLayout;

    .line 388
    .local v23, "payviewlayout":Landroid/widget/LinearLayout;
    if-eqz v23, :cond_1f

    .line 392
    sget v1, Lcom/shenma/tvlauncher/R$id;->qr_code_text:I

    .line 393
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Landroid/widget/TextView;

    .line 394
    .local v24, "qrCodeText":Landroid/widget/TextView;
    if-eqz v24, :cond_1e

    .line 398
    sget v1, Lcom/shenma/tvlauncher/R$id;->scan_line:I

    .line 399
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Landroid/widget/ImageView;

    .line 400
    .local v25, "scanLine":Landroid/widget/ImageView;
    if-eqz v25, :cond_1d

    .line 404
    sget v1, Lcom/shenma/tvlauncher/R$id;->type_details:I

    .line 405
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Landroid/widget/LinearLayout;

    .line 406
    .local v26, "typeDetails":Landroid/widget/LinearLayout;
    if-eqz v26, :cond_1c

    .line 410
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_card:I

    .line 411
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Landroid/widget/LinearLayout;

    .line 412
    .local v27, "vipCard":Landroid/widget/LinearLayout;
    if-eqz v27, :cond_1b

    .line 416
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_convert:I

    .line 417
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v28, v2

    check-cast v28, Landroid/widget/LinearLayout;

    .line 418
    .local v28, "vipConvert":Landroid/widget/LinearLayout;
    if-eqz v28, :cond_1a

    .line 422
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_goods_1_message:I

    .line 423
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v29, v2

    check-cast v29, Landroid/widget/TextView;

    .line 424
    .local v29, "vipGoods1Message":Landroid/widget/TextView;
    if-eqz v29, :cond_19

    .line 428
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_goods_1_price:I

    .line 429
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v30, v2

    check-cast v30, Landroid/widget/TextView;

    .line 430
    .local v30, "vipGoods1Price":Landroid/widget/TextView;
    if-eqz v30, :cond_18

    .line 434
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_goods_1_title:I

    .line 435
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v31, v2

    check-cast v31, Landroid/widget/TextView;

    .line 436
    .local v31, "vipGoods1Title":Landroid/widget/TextView;
    if-eqz v31, :cond_17

    .line 440
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_goods_2_message:I

    .line 441
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v32, v2

    check-cast v32, Landroid/widget/TextView;

    .line 442
    .local v32, "vipGoods2Message":Landroid/widget/TextView;
    if-eqz v32, :cond_16

    .line 446
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_goods_2_price:I

    .line 447
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v33, v2

    check-cast v33, Landroid/widget/TextView;

    .line 448
    .local v33, "vipGoods2Price":Landroid/widget/TextView;
    if-eqz v33, :cond_15

    .line 452
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_goods_2_title:I

    .line 453
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v34, v2

    check-cast v34, Landroid/widget/TextView;

    .line 454
    .local v34, "vipGoods2Title":Landroid/widget/TextView;
    if-eqz v34, :cond_14

    .line 458
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_goods_3_message:I

    .line 459
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v35, v2

    check-cast v35, Landroid/widget/TextView;

    .line 460
    .local v35, "vipGoods3Message":Landroid/widget/TextView;
    if-eqz v35, :cond_13

    .line 464
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_goods_3_price:I

    .line 465
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v36, v2

    check-cast v36, Landroid/widget/TextView;

    .line 466
    .local v36, "vipGoods3Price":Landroid/widget/TextView;
    if-eqz v36, :cond_12

    .line 470
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_goods_3_title:I

    .line 471
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v37, v2

    check-cast v37, Landroid/widget/TextView;

    .line 472
    .local v37, "vipGoods3Title":Landroid/widget/TextView;
    if-eqz v37, :cond_11

    .line 476
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_goods_4_message:I

    .line 477
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v38, v2

    check-cast v38, Landroid/widget/TextView;

    .line 478
    .local v38, "vipGoods4Message":Landroid/widget/TextView;
    if-eqz v38, :cond_10

    .line 482
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_goods_4_price:I

    .line 483
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v39, v2

    check-cast v39, Landroid/widget/TextView;

    .line 484
    .local v39, "vipGoods4Price":Landroid/widget/TextView;
    if-eqz v39, :cond_f

    .line 488
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_goods_4_title:I

    .line 489
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v40, v2

    check-cast v40, Landroid/widget/TextView;

    .line 490
    .local v40, "vipGoods4Title":Landroid/widget/TextView;
    if-eqz v40, :cond_e

    .line 494
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_goods_gid_1:I

    .line 495
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v41, v2

    check-cast v41, Landroid/widget/TextView;

    .line 496
    .local v41, "vipGoodsGid1":Landroid/widget/TextView;
    if-eqz v41, :cond_d

    .line 500
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_goods_gid_2:I

    .line 501
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v42, v2

    check-cast v42, Landroid/widget/TextView;

    .line 502
    .local v42, "vipGoodsGid2":Landroid/widget/TextView;
    if-eqz v42, :cond_c

    .line 506
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_goods_gid_3:I

    .line 507
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v43, v2

    check-cast v43, Landroid/widget/TextView;

    .line 508
    .local v43, "vipGoodsGid3":Landroid/widget/TextView;
    if-eqz v43, :cond_b

    .line 512
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_goods_gid_4:I

    .line 513
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v44, v2

    check-cast v44, Landroid/widget/TextView;

    .line 514
    .local v44, "vipGoodsGid4":Landroid/widget/TextView;
    if-eqz v44, :cond_a

    .line 518
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_goods_r_1:I

    .line 519
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v45, v2

    check-cast v45, Landroid/widget/RelativeLayout;

    .line 520
    .local v45, "vipGoodsR1":Landroid/widget/RelativeLayout;
    if-eqz v45, :cond_9

    .line 524
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_goods_r_2:I

    .line 525
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v46, v2

    check-cast v46, Landroid/widget/RelativeLayout;

    .line 526
    .local v46, "vipGoodsR2":Landroid/widget/RelativeLayout;
    if-eqz v46, :cond_8

    .line 530
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_goods_r_3:I

    .line 531
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v47, v2

    check-cast v47, Landroid/widget/RelativeLayout;

    .line 532
    .local v47, "vipGoodsR3":Landroid/widget/RelativeLayout;
    if-eqz v47, :cond_7

    .line 536
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_goods_r_4:I

    .line 537
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v48, v2

    check-cast v48, Landroid/widget/RelativeLayout;

    .line 538
    .local v48, "vipGoodsR4":Landroid/widget/RelativeLayout;
    if-eqz v48, :cond_6

    .line 542
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_root_card:I

    .line 543
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v49, v2

    check-cast v49, Landroid/widget/RelativeLayout;

    .line 544
    .local v49, "vipRootCard":Landroid/widget/RelativeLayout;
    if-eqz v49, :cond_5

    .line 548
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_root_fen:I

    .line 549
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v50, v2

    check-cast v50, Landroid/widget/RelativeLayout;

    .line 550
    .local v50, "vipRootFen":Landroid/widget/RelativeLayout;
    if-eqz v50, :cond_4

    .line 554
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_root_lin_1:I

    .line 555
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v51, v2

    check-cast v51, Landroid/widget/LinearLayout;

    .line 556
    .local v51, "vipRootLin1":Landroid/widget/LinearLayout;
    if-eqz v51, :cond_3

    .line 560
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_root_lin_2:I

    .line 561
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v52, v2

    check-cast v52, Landroid/widget/LinearLayout;

    .line 562
    .local v52, "vipRootLin2":Landroid/widget/LinearLayout;
    if-eqz v52, :cond_2

    .line 566
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_root_lin_3:I

    .line 567
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v53, v2

    check-cast v53, Landroid/widget/LinearLayout;

    .line 568
    .local v53, "vipRootLin3":Landroid/widget/LinearLayout;
    if-eqz v53, :cond_1

    .line 572
    sget v1, Lcom/shenma/tvlauncher/R$id;->vip_root_lin_4:I

    .line 573
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v54, v2

    check-cast v54, Landroid/widget/LinearLayout;

    .line 574
    .local v54, "vipRootLin4":Landroid/widget/LinearLayout;
    if-eqz v54, :cond_0

    .line 578
    new-instance v3, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-direct/range {v3 .. v54}, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    return-object v3

    .line 575
    :cond_0
    goto/16 :goto_0

    .line 569
    .end local v54    # "vipRootLin4":Landroid/widget/LinearLayout;
    :cond_1
    goto/16 :goto_0

    .line 563
    .end local v53    # "vipRootLin3":Landroid/widget/LinearLayout;
    :cond_2
    goto/16 :goto_0

    .line 557
    .end local v52    # "vipRootLin2":Landroid/widget/LinearLayout;
    :cond_3
    goto/16 :goto_0

    .line 551
    .end local v51    # "vipRootLin1":Landroid/widget/LinearLayout;
    :cond_4
    goto/16 :goto_0

    .line 545
    .end local v50    # "vipRootFen":Landroid/widget/RelativeLayout;
    :cond_5
    goto/16 :goto_0

    .line 539
    .end local v49    # "vipRootCard":Landroid/widget/RelativeLayout;
    :cond_6
    goto :goto_0

    .line 533
    .end local v48    # "vipGoodsR4":Landroid/widget/RelativeLayout;
    :cond_7
    goto :goto_0

    .line 527
    .end local v47    # "vipGoodsR3":Landroid/widget/RelativeLayout;
    :cond_8
    goto :goto_0

    .line 521
    .end local v46    # "vipGoodsR2":Landroid/widget/RelativeLayout;
    :cond_9
    goto :goto_0

    .line 515
    .end local v45    # "vipGoodsR1":Landroid/widget/RelativeLayout;
    :cond_a
    goto :goto_0

    .line 509
    .end local v44    # "vipGoodsGid4":Landroid/widget/TextView;
    :cond_b
    goto :goto_0

    .line 503
    .end local v43    # "vipGoodsGid3":Landroid/widget/TextView;
    :cond_c
    goto :goto_0

    .line 497
    .end local v42    # "vipGoodsGid2":Landroid/widget/TextView;
    :cond_d
    goto :goto_0

    .line 491
    .end local v41    # "vipGoodsGid1":Landroid/widget/TextView;
    :cond_e
    goto :goto_0

    .line 485
    .end local v40    # "vipGoods4Title":Landroid/widget/TextView;
    :cond_f
    goto :goto_0

    .line 479
    .end local v39    # "vipGoods4Price":Landroid/widget/TextView;
    :cond_10
    goto :goto_0

    .line 473
    .end local v38    # "vipGoods4Message":Landroid/widget/TextView;
    :cond_11
    goto :goto_0

    .line 467
    .end local v37    # "vipGoods3Title":Landroid/widget/TextView;
    :cond_12
    goto :goto_0

    .line 461
    .end local v36    # "vipGoods3Price":Landroid/widget/TextView;
    :cond_13
    goto :goto_0

    .line 455
    .end local v35    # "vipGoods3Message":Landroid/widget/TextView;
    :cond_14
    goto :goto_0

    .line 449
    .end local v34    # "vipGoods2Title":Landroid/widget/TextView;
    :cond_15
    goto :goto_0

    .line 443
    .end local v33    # "vipGoods2Price":Landroid/widget/TextView;
    :cond_16
    goto :goto_0

    .line 437
    .end local v32    # "vipGoods2Message":Landroid/widget/TextView;
    :cond_17
    goto :goto_0

    .line 431
    .end local v31    # "vipGoods1Title":Landroid/widget/TextView;
    :cond_18
    goto :goto_0

    .line 425
    .end local v30    # "vipGoods1Price":Landroid/widget/TextView;
    :cond_19
    goto :goto_0

    .line 419
    .end local v29    # "vipGoods1Message":Landroid/widget/TextView;
    :cond_1a
    goto :goto_0

    .line 413
    .end local v28    # "vipConvert":Landroid/widget/LinearLayout;
    :cond_1b
    goto :goto_0

    .line 407
    .end local v27    # "vipCard":Landroid/widget/LinearLayout;
    :cond_1c
    goto :goto_0

    .line 401
    .end local v26    # "typeDetails":Landroid/widget/LinearLayout;
    :cond_1d
    goto :goto_0

    .line 395
    .end local v25    # "scanLine":Landroid/widget/ImageView;
    :cond_1e
    goto :goto_0

    .line 389
    .end local v24    # "qrCodeText":Landroid/widget/TextView;
    :cond_1f
    goto :goto_0

    .line 383
    .end local v23    # "payviewlayout":Landroid/widget/LinearLayout;
    :cond_20
    goto :goto_0

    .line 377
    .end local v22    # "llTypeDetails":Landroid/widget/LinearLayout;
    :cond_21
    goto :goto_0

    .line 371
    .end local v21    # "kmviewlayout":Landroid/widget/LinearLayout;
    :cond_22
    goto :goto_0

    .line 365
    .end local v20    # "ivLine760":Landroid/widget/ImageView;
    :cond_23
    goto :goto_0

    .line 359
    .end local v19    # "ivLiftlongMember":Landroid/widget/ImageView;
    :cond_24
    goto :goto_0

    .line 353
    .end local v18    # "empowerTime":Landroid/widget/TextView;
    :cond_25
    goto :goto_0

    .line 347
    .end local v17    # "empowerState":Landroid/widget/TextView;
    :cond_26
    goto :goto_0

    .line 341
    .end local v16    # "empowerSearchKeybordInput":Landroid/widget/EditText;
    :cond_27
    goto :goto_0

    .line 335
    .end local v15    # "empowerSearch":Landroid/widget/TextView;
    :cond_28
    goto :goto_0

    .line 329
    .end local v14    # "empowerPayText":Landroid/widget/TextView;
    :cond_29
    goto :goto_0

    .line 323
    .end local v13    # "empowerIvPayEcode":Landroid/widget/ImageView;
    :cond_2a
    goto :goto_0

    .line 317
    .end local v12    # "empowerFen":Landroid/widget/TextView;
    :cond_2b
    goto :goto_0

    .line 311
    .end local v11    # "empowerCodestr":Landroid/widget/TextView;
    :cond_2c
    goto :goto_0

    .line 305
    .end local v10    # "empowerCodefen":Landroid/widget/TextView;
    :cond_2d
    goto :goto_0

    .line 299
    .end local v9    # "empowerCode":Landroid/widget/TextView;
    :cond_2e
    goto :goto_0

    .line 291
    .end local v7    # "empower":Landroid/widget/FrameLayout;
    .end local v8    # "empowerBtnSendCode":Landroid/widget/Button;
    :cond_2f
    goto :goto_0

    .line 285
    .end local v6    # "delerweima":Landroid/widget/LinearLayout;
    :cond_30
    nop

    .line 589
    .end local v5    # "boxLayout":Landroid/widget/RelativeLayout;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 590
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 263
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 269
    sget v0, Lcom/shenma/tvlauncher/R$layout;->layout_empower:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 270
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 271
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 273
    :cond_0
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/LayoutEmpowerBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
