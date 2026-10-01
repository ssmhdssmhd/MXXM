.class public Lcom/shenma/tvlauncher/EmpowerActivity;
.super Lcom/shenma/tvlauncher/BaseActivity;
.source "EmpowerActivity.java"


# instance fields
.field private Long_Qr_code_Url:Ljava/lang/String;

.field private Msg:Ljava/lang/String;

.field private Pay_Name:[Ljava/lang/String;

.field private Pay_Type:[Ljava/lang/String;

.field private Qr_code_Url:Ljava/lang/String;

.field private Qr_code_text:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private account:Landroid/widget/TextView;

.field private alertDialog:Landroid/app/AlertDialog;

.field private boxLayout:Landroid/view/View;

.field private editCode:Landroid/widget/EditText;

.field private empower_iv_pay_ecode:Landroid/widget/ImageView;

.field private empower_pay_text:Landroid/widget/TextView;

.field private empower_type:I

.field private empower_url:Ljava/lang/String;

.field private goods:Ljava/lang/String;

.field private goodsmoney:Ljava/lang/String;

.field private goodsname:Ljava/lang/String;

.field private ivLiftlongMember:Landroid/widget/ImageView;

.field private jifen:Landroid/widget/TextView;

.field private kmviewlayout:Landroid/widget/LinearLayout;

.field private mQrLineView:Landroid/widget/ImageView;

.field public mQueue:Lcom/android/volley/RequestQueue;

.field private mediaHandler:Landroid/os/Handler;

.field private orders:Ljava/lang/String;

.field private payviewlayout:Landroid/widget/LinearLayout;

.field private qr_code_text:Landroid/widget/TextView;

.field private sendCode:Landroid/widget/Button;

.field private stoppay:I

.field private vipTime:Landroid/widget/TextView;

.field private vip_card:Landroid/widget/LinearLayout;

.field private vip_convert:Landroid/widget/LinearLayout;

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

.field private vip_root_card:Landroid/widget/RelativeLayout;

.field private vip_root_fen:Landroid/widget/RelativeLayout;

.field private vip_root_lin_1:Landroid/widget/LinearLayout;

.field private vip_root_lin_2:Landroid/widget/LinearLayout;

.field private vip_root_lin_3:Landroid/widget/LinearLayout;

.field private vip_root_lin_4:Landroid/widget/LinearLayout;

.field private viptime:Ljava/lang/String;

.field private way:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetMsg(Lcom/shenma/tvlauncher/EmpowerActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->Msg:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetPay_Name(Lcom/shenma/tvlauncher/EmpowerActivity;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->Pay_Name:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetPay_Type(Lcom/shenma/tvlauncher/EmpowerActivity;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->Pay_Type:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetalertDialog(Lcom/shenma/tvlauncher/EmpowerActivity;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->alertDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeteditCode(Lcom/shenma/tvlauncher/EmpowerActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->editCode:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetempower_type(Lcom/shenma/tvlauncher/EmpowerActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->empower_type:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetkmviewlayout(Lcom/shenma/tvlauncher/EmpowerActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->kmviewlayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmQrLineView(Lcom/shenma/tvlauncher/EmpowerActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->mQrLineView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetorders(Lcom/shenma/tvlauncher/EmpowerActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->orders:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpayviewlayout(Lcom/shenma/tvlauncher/EmpowerActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->payviewlayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstoppay(Lcom/shenma/tvlauncher/EmpowerActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->stoppay:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetvipTime(Lcom/shenma/tvlauncher/EmpowerActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vipTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetviptime(Lcom/shenma/tvlauncher/EmpowerActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->viptime:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetway(Lcom/shenma/tvlauncher/EmpowerActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->way:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputway(Lcom/shenma/tvlauncher/EmpowerActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->way:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mGetInfo(Lcom/shenma/tvlauncher/EmpowerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->GetInfo()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mGetpay(Lcom/shenma/tvlauncher/EmpowerActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/shenma/tvlauncher/EmpowerActivity;->Getpay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mGoodsList(Lcom/shenma/tvlauncher/EmpowerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->GoodsList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetCard(Lcom/shenma/tvlauncher/EmpowerActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/shenma/tvlauncher/EmpowerActivity;->getCard(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mloadImg(Lcom/shenma/tvlauncher/EmpowerActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/EmpowerActivity;->loadImg(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mvip_goods_r_1(Lcom/shenma/tvlauncher/EmpowerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_r_1()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mvip_goods_r_2(Lcom/shenma/tvlauncher/EmpowerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_r_2()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mvip_goods_r_3(Lcom/shenma/tvlauncher/EmpowerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_r_3()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mvip_goods_r_4(Lcom/shenma/tvlauncher/EmpowerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_r_4()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mvip_root_card(Lcom/shenma/tvlauncher/EmpowerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_root_card()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mvip_root_fen(Lcom/shenma/tvlauncher/EmpowerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_root_fen()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/shenma/tvlauncher/BaseActivity;-><init>()V

    .line 68
    const-string v0, "EmpowerActivity"

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->TAG:Ljava/lang/String;

    .line 79
    new-instance v0, Lcom/shenma/tvlauncher/EmpowerActivity$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/EmpowerActivity$1;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->mediaHandler:Landroid/os/Handler;

    .line 158
    const/4 v0, 0x1

    iput v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->empower_type:I

    .line 162
    iput v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->stoppay:I

    .line 166
    const-string v0, ""

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->Long_Qr_code_Url:Ljava/lang/String;

    return-void
.end method

.method private GetInfo()V
    .locals 13

    .line 939
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 940
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 941
    .local v12, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 942
    .local v7, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 943
    .local v8, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 944
    .local v9, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 945
    .local v10, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 946
    .local v11, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 947
    .local v6, "miType":I
    new-instance v0, Lcom/shenma/tvlauncher/EmpowerActivity$27;

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

    new-instance v4, Lcom/shenma/tvlauncher/EmpowerActivity$25;

    invoke-direct {v4, p0}, Lcom/shenma/tvlauncher/EmpowerActivity$25;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    new-instance v5, Lcom/shenma/tvlauncher/EmpowerActivity$26;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/EmpowerActivity$26;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    const/4 v2, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/shenma/tvlauncher/EmpowerActivity$27;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 989
    return-void
.end method

.method private GetText()V
    .locals 13

    .line 368
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 369
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 370
    .local v12, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 371
    .local v7, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 372
    .local v8, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 373
    .local v9, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 374
    .local v10, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 375
    .local v11, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 377
    .local v6, "miType":I
    new-instance v0, Lcom/shenma/tvlauncher/EmpowerActivity$7;

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

    const-string v3, "&act=text_notice"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shenma/tvlauncher/EmpowerActivity$5;

    invoke-direct {v4, p0}, Lcom/shenma/tvlauncher/EmpowerActivity$5;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    new-instance v5, Lcom/shenma/tvlauncher/EmpowerActivity$6;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/EmpowerActivity$6;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    const/4 v2, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/shenma/tvlauncher/EmpowerActivity$7;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 419
    return-void
.end method

.method private Getgoods()V
    .locals 13

    .line 190
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 191
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 192
    .local v12, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 193
    .local v7, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 194
    .local v8, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 195
    .local v9, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 196
    .local v10, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 197
    .local v11, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 198
    .local v6, "miType":I
    new-instance v0, Lcom/shenma/tvlauncher/EmpowerActivity$4;

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

    const-string v3, "&act=goods"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shenma/tvlauncher/EmpowerActivity$2;

    invoke-direct {v4, p0}, Lcom/shenma/tvlauncher/EmpowerActivity$2;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    new-instance v5, Lcom/shenma/tvlauncher/EmpowerActivity$3;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/EmpowerActivity$3;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    const/4 v2, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/shenma/tvlauncher/EmpowerActivity$4;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 239
    return-void
.end method

.method private Getpay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "orderrc4"    # Ljava/lang/String;
    .param p2, "userrc4"    # Ljava/lang/String;
    .param p3, "way"    # Ljava/lang/String;
    .param p4, "gidrc4"    # Ljava/lang/String;
    .param p5, "PayType"    # Ljava/lang/String;

    .line 739
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->context:Landroid/content/Context;

    sget v2, Lcom/shenma/tvlauncher/R$string;->loading:I

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Utils;->loadingShow_tv(Landroid/content/Context;I)V

    .line 740
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v1, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 741
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 742
    .local v0, "User_url":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 743
    .local v11, "RC4KEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 744
    .local v12, "RSAKEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 745
    .local v13, "AESKEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 746
    .local v14, "AESIV":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 747
    .local v15, "Appkey":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v10

    .line 748
    .local v10, "miType":I
    new-instance v2, Lcom/shenma/tvlauncher/EmpowerActivity$21;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/api.php?app="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/Api;->JUHEQQ692000321_ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&act=pay"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shenma/tvlauncher/EmpowerActivity$19;

    move-object/from16 v5, p5

    invoke-direct {v4, v1, v5}, Lcom/shenma/tvlauncher/EmpowerActivity$19;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;Ljava/lang/String;)V

    new-instance v5, Lcom/shenma/tvlauncher/EmpowerActivity$20;

    invoke-direct {v5, v1}, Lcom/shenma/tvlauncher/EmpowerActivity$20;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    move-object v6, v0

    move-object v0, v2

    .end local v0    # "User_url":Ljava/lang/String;
    .local v6, "User_url":Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v16, v6

    move-object/from16 v6, p1

    .end local v6    # "User_url":Ljava/lang/String;
    .local v16, "User_url":Ljava/lang/String;
    invoke-direct/range {v0 .. v15}, Lcom/shenma/tvlauncher/EmpowerActivity$21;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    new-instance v2, Lcom/android/volley/DefaultRetryPolicy;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x3a98

    invoke-direct {v2, v5, v3, v4}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v2}, Lcom/android/volley/toolbox/StringRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 791
    iget-object v2, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 792
    return-void
.end method

.method private GoodsList()V
    .locals 43

    .line 276
    move-object/from16 v1, p0

    const-string v0, "0"

    const-string v2, "gname"

    const-string/jumbo v3, "y"

    :try_start_0
    new-instance v4, Lorg/json/JSONTokener;

    iget-object v5, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->goods:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v4

    .line 277
    .local v4, "object":Ljava/lang/Object;
    instance-of v5, v4, Lorg/json/JSONArray;

    if-eqz v5, :cond_d

    .line 278
    move-object v5, v4

    check-cast v5, Lorg/json/JSONArray;

    .line 279
    .local v5, "jsonArray":Lorg/json/JSONArray;
    sget v6, Lcom/shenma/tvlauncher/R$id;->vip_goods_gid_1:I

    sget v7, Lcom/shenma/tvlauncher/R$id;->vip_goods_gid_2:I

    sget v8, Lcom/shenma/tvlauncher/R$id;->vip_goods_gid_3:I

    sget v9, Lcom/shenma/tvlauncher/R$id;->vip_goods_gid_4:I

    filled-new-array {v6, v7, v8, v9}, [I

    move-result-object v6

    .line 280
    .local v6, "vip_goods_gids":[I
    sget v7, Lcom/shenma/tvlauncher/R$id;->vip_goods_1_title:I

    sget v8, Lcom/shenma/tvlauncher/R$id;->vip_goods_2_title:I

    sget v9, Lcom/shenma/tvlauncher/R$id;->vip_goods_3_title:I

    sget v10, Lcom/shenma/tvlauncher/R$id;->vip_goods_4_title:I

    filled-new-array {v7, v8, v9, v10}, [I

    move-result-object v7

    .line 281
    .local v7, "vip_goods_titles":[I
    sget v8, Lcom/shenma/tvlauncher/R$id;->vip_goods_1_price:I

    sget v9, Lcom/shenma/tvlauncher/R$id;->vip_goods_2_price:I

    sget v10, Lcom/shenma/tvlauncher/R$id;->vip_goods_3_price:I

    sget v11, Lcom/shenma/tvlauncher/R$id;->vip_goods_4_price:I

    filled-new-array {v8, v9, v10, v11}, [I

    move-result-object v8

    .line 282
    .local v8, "vip_goods_prices":[I
    sget v9, Lcom/shenma/tvlauncher/R$id;->vip_goods_1_message:I

    sget v10, Lcom/shenma/tvlauncher/R$id;->vip_goods_2_message:I

    sget v11, Lcom/shenma/tvlauncher/R$id;->vip_goods_3_message:I

    sget v12, Lcom/shenma/tvlauncher/R$id;->vip_goods_4_message:I

    filled-new-array {v9, v10, v11, v12}, [I

    move-result-object v9

    .line 283
    .local v9, "vip_goods_messages":[I
    sget v10, Lcom/shenma/tvlauncher/R$id;->vip_root_lin_1:I

    sget v11, Lcom/shenma/tvlauncher/R$id;->vip_root_lin_2:I

    sget v12, Lcom/shenma/tvlauncher/R$id;->vip_root_lin_3:I

    sget v13, Lcom/shenma/tvlauncher/R$id;->vip_root_lin_4:I

    filled-new-array {v10, v11, v12, v13}, [I

    move-result-object v10

    .line 284
    .local v10, "vip_root_lins":[I
    sget v11, Lcom/shenma/tvlauncher/R$id;->vip_goods_r_1:I

    sget v12, Lcom/shenma/tvlauncher/R$id;->vip_goods_r_2:I

    sget v13, Lcom/shenma/tvlauncher/R$id;->vip_goods_r_3:I

    sget v14, Lcom/shenma/tvlauncher/R$id;->vip_goods_r_4:I

    filled-new-array {v11, v12, v13, v14}, [I

    move-result-object v11

    .line 285
    .local v11, "vip_goods_rs":[I
    const/4 v12, 0x0

    .line 286
    .local v12, "index":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_c

    const/4 v14, 0x4

    if-ge v12, v14, :cond_c

    .line 287
    invoke-virtual {v5, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 288
    .local v14, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 289
    const-string v15, "gid"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 290
    .local v15, "gid":Ljava/lang/String;
    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    .line 291
    .local v17, "gname":Ljava/lang/String;
    move-object/from16 v16, v2

    const-string v2, "gmoney"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, "gmoney":Ljava/lang/String;
    move-object/from16 v18, v4

    .end local v4    # "object":Ljava/lang/Object;
    .local v18, "object":Ljava/lang/Object;
    const-string v4, "cv"

    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 293
    .local v4, "cv":Ljava/lang/String;
    move-object/from16 v19, v5

    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .local v19, "jsonArray":Lorg/json/JSONArray;
    const-string v5, "pay_ali_state"

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 294
    .local v5, "pay_ali_state":Ljava/lang/String;
    move-object/from16 v20, v6

    .end local v6    # "vip_goods_gids":[I
    .local v20, "vip_goods_gids":[I
    const-string v6, "pay_ali_name"

    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 295
    .local v6, "pay_ali_name":Ljava/lang/String;
    move-object/from16 v21, v7

    .end local v7    # "vip_goods_titles":[I
    .local v21, "vip_goods_titles":[I
    const-string v7, "pay_ali_type"

    invoke-virtual {v14, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 296
    .local v7, "pay_ali_type":Ljava/lang/String;
    move-object/from16 v22, v8

    .end local v8    # "vip_goods_prices":[I
    .local v22, "vip_goods_prices":[I
    const-string v8, "pay_wx_state"

    invoke-virtual {v14, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 297
    .local v8, "pay_wx_state":Ljava/lang/String;
    move-object/from16 v23, v9

    .end local v9    # "vip_goods_messages":[I
    .local v23, "vip_goods_messages":[I
    const-string v9, "pay_wx_name"

    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 298
    .local v9, "pay_wx_name":Ljava/lang/String;
    move-object/from16 v24, v10

    .end local v10    # "vip_root_lins":[I
    .local v24, "vip_root_lins":[I
    const-string v10, "pay_wx_type"

    invoke-virtual {v14, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 299
    .local v10, "pay_wx_type":Ljava/lang/String;
    move-object/from16 v25, v11

    .end local v11    # "vip_goods_rs":[I
    .local v25, "vip_goods_rs":[I
    const-string v11, "pay_qq_state"

    invoke-virtual {v14, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 300
    .local v11, "pay_qq_state":Ljava/lang/String;
    move/from16 v26, v12

    .end local v12    # "index":I
    .local v26, "index":I
    const-string v12, "pay_qq_name"

    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 301
    .local v12, "pay_qq_name":Ljava/lang/String;
    move/from16 v27, v13

    .end local v13    # "i":I
    .local v27, "i":I
    const-string v13, "pay_qq_type"

    invoke-virtual {v14, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 302
    .local v13, "pay_qq_type":Ljava/lang/String;
    move-object/from16 v28, v13

    .end local v13    # "pay_qq_type":Ljava/lang/String;
    .local v28, "pay_qq_type":Ljava/lang/String;
    const-string v13, "pay_other_state"

    invoke-virtual {v14, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 303
    .local v13, "pay_other_state":Ljava/lang/String;
    move-object/from16 v29, v10

    .end local v10    # "pay_wx_type":Ljava/lang/String;
    .local v29, "pay_wx_type":Ljava/lang/String;
    const-string v10, "pay_other_name"

    invoke-virtual {v14, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 304
    .local v10, "pay_other_name":Ljava/lang/String;
    move-object/from16 v30, v7

    .end local v7    # "pay_ali_type":Ljava/lang/String;
    .local v30, "pay_ali_type":Ljava/lang/String;
    const-string v7, "pay_other_type"

    invoke-virtual {v14, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 305
    .local v7, "pay_other_type":Ljava/lang/String;
    move-object/from16 v31, v7

    .end local v7    # "pay_other_type":Ljava/lang/String;
    .local v31, "pay_other_type":Ljava/lang/String;
    const-string v7, "clock_state"

    invoke-virtual {v14, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 306
    .local v7, "clock_state":Ljava/lang/String;
    move-object/from16 v32, v0

    const-string/jumbo v0, "vip_card"

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "card":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_a

    .line 308
    move-object/from16 v33, v14

    .end local v14    # "jsonObject":Lorg/json/JSONObject;
    .local v33, "jsonObject":Lorg/json/JSONObject;
    aget v14, v20, v26

    invoke-virtual {v1, v14}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 309
    .local v14, "vip_goods_gid":Landroid/widget/TextView;
    move-object/from16 v34, v0

    .end local v0    # "card":Ljava/lang/String;
    .local v34, "card":Ljava/lang/String;
    aget v0, v21, v26

    invoke-virtual {v1, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 310
    .local v0, "vip_goods_title":Landroid/widget/TextView;
    move-object/from16 v35, v7

    .end local v7    # "clock_state":Ljava/lang/String;
    .local v35, "clock_state":Ljava/lang/String;
    aget v7, v22, v26

    invoke-virtual {v1, v7}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 311
    .local v7, "vip_goods_price":Landroid/widget/TextView;
    move-object/from16 v36, v10

    .end local v10    # "pay_other_name":Ljava/lang/String;
    .local v36, "pay_other_name":Ljava/lang/String;
    aget v10, v23, v26

    invoke-virtual {v1, v10}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 312
    .local v10, "vip_goods_message":Landroid/widget/TextView;
    move-object/from16 v37, v13

    .end local v13    # "pay_other_state":Ljava/lang/String;
    .local v37, "pay_other_state":Ljava/lang/String;
    aget v13, v24, v26

    invoke-virtual {v1, v13}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 313
    .local v13, "vip_root_lin":Landroid/widget/LinearLayout;
    move-object/from16 v38, v12

    .end local v12    # "pay_qq_name":Ljava/lang/String;
    .local v38, "pay_qq_name":Ljava/lang/String;
    aget v12, v25, v26

    invoke-virtual {v1, v12}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    .line 314
    .local v12, "vip_goods_r":Landroid/widget/RelativeLayout;
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    move-object/from16 v39, v14

    move-object/from16 v14, v17

    .end local v17    # "gname":Ljava/lang/String;
    .local v14, "gname":Ljava/lang/String;
    .local v39, "vip_goods_gid":Landroid/widget/TextView;
    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    move-object/from16 v17, v0

    .end local v0    # "vip_goods_title":Landroid/widget/TextView;
    .local v17, "vip_goods_title":Landroid/widget/TextView;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v40, v14

    .end local v14    # "gname":Ljava/lang/String;
    .local v40, "gname":Ljava/lang/String;
    const-string/jumbo v14, "\uffe5"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v14, "\u5143"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 319
    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 320
    add-int/lit8 v14, v26, 0x1

    .line 321
    .end local v26    # "index":I
    .local v14, "index":I
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v41, v26

    .line 322
    .local v41, "PayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 323
    move-object/from16 v0, v41

    .end local v41    # "PayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "PayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 322
    .end local v0    # "PayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v41    # "PayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    move-object/from16 v0, v41

    .line 325
    .end local v41    # "PayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "PayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 326
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    :cond_1
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 329
    move-object/from16 v41, v2

    move-object/from16 v2, v38

    .end local v38    # "pay_qq_name":Ljava/lang/String;
    .local v2, "pay_qq_name":Ljava/lang/String;
    .local v41, "gmoney":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 328
    .end local v41    # "gmoney":Ljava/lang/String;
    .local v2, "gmoney":Ljava/lang/String;
    .restart local v38    # "pay_qq_name":Ljava/lang/String;
    :cond_2
    move-object/from16 v41, v2

    move-object/from16 v2, v38

    .line 331
    .end local v38    # "pay_qq_name":Ljava/lang/String;
    .local v2, "pay_qq_name":Ljava/lang/String;
    .restart local v41    # "gmoney":Ljava/lang/String;
    :goto_2
    move-object/from16 v38, v2

    move-object/from16 v2, v37

    .end local v37    # "pay_other_state":Ljava/lang/String;
    .local v2, "pay_other_state":Ljava/lang/String;
    .restart local v38    # "pay_qq_name":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 332
    move-object/from16 v37, v4

    move-object/from16 v4, v36

    .end local v36    # "pay_other_name":Ljava/lang/String;
    .local v4, "pay_other_name":Ljava/lang/String;
    .local v37, "cv":Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 331
    .end local v37    # "cv":Ljava/lang/String;
    .local v4, "cv":Ljava/lang/String;
    .restart local v36    # "pay_other_name":Ljava/lang/String;
    :cond_3
    move-object/from16 v37, v4

    move-object/from16 v4, v36

    .line 334
    .end local v36    # "pay_other_name":Ljava/lang/String;
    .local v4, "pay_other_name":Ljava/lang/String;
    .restart local v37    # "cv":Ljava/lang/String;
    :goto_3
    move-object/from16 v36, v32

    move-object/from16 v32, v6

    move-object/from16 v6, v36

    move-object/from16 v36, v4

    move-object/from16 v4, v35

    .end local v6    # "pay_ali_name":Ljava/lang/String;
    .end local v35    # "clock_state":Ljava/lang/String;
    .local v4, "clock_state":Ljava/lang/String;
    .local v32, "pay_ali_name":Ljava/lang/String;
    .restart local v36    # "pay_other_name":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_4

    .line 335
    move-object/from16 v35, v4

    .end local v4    # "clock_state":Ljava/lang/String;
    .restart local v35    # "clock_state":Ljava/lang/String;
    iget-object v4, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_convert:Landroid/widget/LinearLayout;

    move-object/from16 v42, v7

    const/4 v7, 0x0

    .end local v7    # "vip_goods_price":Landroid/widget/TextView;
    .local v42, "vip_goods_price":Landroid/widget/TextView;
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4

    .line 334
    .end local v35    # "clock_state":Ljava/lang/String;
    .end local v42    # "vip_goods_price":Landroid/widget/TextView;
    .restart local v4    # "clock_state":Ljava/lang/String;
    .restart local v7    # "vip_goods_price":Landroid/widget/TextView;
    :cond_4
    move-object/from16 v35, v4

    move-object/from16 v42, v7

    .line 337
    .end local v4    # "clock_state":Ljava/lang/String;
    .end local v7    # "vip_goods_price":Landroid/widget/TextView;
    .restart local v35    # "clock_state":Ljava/lang/String;
    .restart local v42    # "vip_goods_price":Landroid/widget/TextView;
    :goto_4
    move-object/from16 v4, v34

    .end local v34    # "card":Ljava/lang/String;
    .local v4, "card":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 338
    iget-object v7, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_card:Landroid/widget/LinearLayout;

    move-object/from16 v34, v4

    .end local v4    # "card":Ljava/lang/String;
    .restart local v34    # "card":Ljava/lang/String;
    const/16 v4, 0x8

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5

    .line 337
    .end local v34    # "card":Ljava/lang/String;
    .restart local v4    # "card":Ljava/lang/String;
    :cond_5
    move-object/from16 v34, v4

    .line 341
    .end local v4    # "card":Ljava/lang/String;
    .restart local v34    # "card":Ljava/lang/String;
    :goto_5
    const/4 v7, 0x0

    new-array v4, v7, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->Pay_Name:[Ljava/lang/String;

    .line 342
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v4, "PayLists":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 344
    move-object/from16 v7, v30

    .end local v30    # "pay_ali_type":Ljava/lang/String;
    .local v7, "pay_ali_type":Ljava/lang/String;
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 343
    .end local v7    # "pay_ali_type":Ljava/lang/String;
    .restart local v30    # "pay_ali_type":Ljava/lang/String;
    :cond_6
    move-object/from16 v7, v30

    .line 346
    .end local v30    # "pay_ali_type":Ljava/lang/String;
    .restart local v7    # "pay_ali_type":Ljava/lang/String;
    :goto_6
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 347
    move-object/from16 v26, v0

    move-object/from16 v0, v29

    .end local v29    # "pay_wx_type":Ljava/lang/String;
    .local v0, "pay_wx_type":Ljava/lang/String;
    .local v26, "PayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 346
    .end local v26    # "PayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "PayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v29    # "pay_wx_type":Ljava/lang/String;
    :cond_7
    move-object/from16 v26, v0

    move-object/from16 v0, v29

    .line 349
    .end local v29    # "pay_wx_type":Ljava/lang/String;
    .local v0, "pay_wx_type":Ljava/lang/String;
    .restart local v26    # "PayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_7
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_8

    .line 350
    move-object/from16 v29, v0

    move-object/from16 v0, v28

    .end local v28    # "pay_qq_type":Ljava/lang/String;
    .local v0, "pay_qq_type":Ljava/lang/String;
    .restart local v29    # "pay_wx_type":Ljava/lang/String;
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 349
    .end local v29    # "pay_wx_type":Ljava/lang/String;
    .local v0, "pay_wx_type":Ljava/lang/String;
    .restart local v28    # "pay_qq_type":Ljava/lang/String;
    :cond_8
    move-object/from16 v29, v0

    move-object/from16 v0, v28

    .line 352
    .end local v28    # "pay_qq_type":Ljava/lang/String;
    .local v0, "pay_qq_type":Ljava/lang/String;
    .restart local v29    # "pay_wx_type":Ljava/lang/String;
    :goto_8
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_9

    .line 353
    move-object/from16 v28, v0

    move-object/from16 v0, v31

    .end local v31    # "pay_other_type":Ljava/lang/String;
    .local v0, "pay_other_type":Ljava/lang/String;
    .restart local v28    # "pay_qq_type":Ljava/lang/String;
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 352
    .end local v28    # "pay_qq_type":Ljava/lang/String;
    .local v0, "pay_qq_type":Ljava/lang/String;
    .restart local v31    # "pay_other_type":Ljava/lang/String;
    :cond_9
    move-object/from16 v28, v0

    move-object/from16 v0, v31

    .line 355
    .end local v31    # "pay_other_type":Ljava/lang/String;
    .local v0, "pay_other_type":Ljava/lang/String;
    .restart local v28    # "pay_qq_type":Ljava/lang/String;
    :goto_9
    move-object/from16 v31, v0

    const/4 v0, 0x0

    .end local v0    # "pay_other_type":Ljava/lang/String;
    .restart local v31    # "pay_other_type":Ljava/lang/String;
    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->Pay_Type:[Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v12, v14

    goto :goto_b

    .line 307
    .end local v32    # "pay_ali_name":Ljava/lang/String;
    .end local v33    # "jsonObject":Lorg/json/JSONObject;
    .end local v34    # "card":Ljava/lang/String;
    .end local v35    # "clock_state":Ljava/lang/String;
    .end local v36    # "pay_other_name":Ljava/lang/String;
    .end local v37    # "cv":Ljava/lang/String;
    .end local v38    # "pay_qq_name":Ljava/lang/String;
    .end local v39    # "vip_goods_gid":Landroid/widget/TextView;
    .end local v40    # "gname":Ljava/lang/String;
    .end local v41    # "gmoney":Ljava/lang/String;
    .end local v42    # "vip_goods_price":Landroid/widget/TextView;
    .local v0, "card":Ljava/lang/String;
    .local v2, "gmoney":Ljava/lang/String;
    .local v4, "cv":Ljava/lang/String;
    .restart local v6    # "pay_ali_name":Ljava/lang/String;
    .local v7, "clock_state":Ljava/lang/String;
    .local v10, "pay_other_name":Ljava/lang/String;
    .local v12, "pay_qq_name":Ljava/lang/String;
    .local v13, "pay_other_state":Ljava/lang/String;
    .local v14, "jsonObject":Lorg/json/JSONObject;
    .local v17, "gname":Ljava/lang/String;
    .local v26, "index":I
    .restart local v30    # "pay_ali_type":Ljava/lang/String;
    :cond_a
    move-object/from16 v33, v32

    move-object/from16 v32, v6

    move-object/from16 v6, v33

    move-object/from16 v34, v0

    move-object/from16 v41, v2

    move-object/from16 v37, v4

    move-object/from16 v35, v7

    move-object/from16 v36, v10

    move-object/from16 v38, v12

    move-object v2, v13

    move-object/from16 v33, v14

    move-object/from16 v40, v17

    move-object/from16 v7, v30

    .end local v0    # "card":Ljava/lang/String;
    .end local v4    # "cv":Ljava/lang/String;
    .end local v6    # "pay_ali_name":Ljava/lang/String;
    .end local v10    # "pay_other_name":Ljava/lang/String;
    .end local v12    # "pay_qq_name":Ljava/lang/String;
    .end local v13    # "pay_other_state":Ljava/lang/String;
    .end local v14    # "jsonObject":Lorg/json/JSONObject;
    .end local v17    # "gname":Ljava/lang/String;
    .end local v30    # "pay_ali_type":Ljava/lang/String;
    .local v2, "pay_other_state":Ljava/lang/String;
    .local v7, "pay_ali_type":Ljava/lang/String;
    .restart local v32    # "pay_ali_name":Ljava/lang/String;
    .restart local v33    # "jsonObject":Lorg/json/JSONObject;
    .restart local v34    # "card":Ljava/lang/String;
    .restart local v35    # "clock_state":Ljava/lang/String;
    .restart local v36    # "pay_other_name":Ljava/lang/String;
    .restart local v37    # "cv":Ljava/lang/String;
    .restart local v38    # "pay_qq_name":Ljava/lang/String;
    .restart local v40    # "gname":Ljava/lang/String;
    .restart local v41    # "gmoney":Ljava/lang/String;
    goto :goto_a

    .line 288
    .end local v2    # "pay_other_state":Ljava/lang/String;
    .end local v15    # "gid":Ljava/lang/String;
    .end local v18    # "object":Ljava/lang/Object;
    .end local v19    # "jsonArray":Lorg/json/JSONArray;
    .end local v20    # "vip_goods_gids":[I
    .end local v21    # "vip_goods_titles":[I
    .end local v22    # "vip_goods_prices":[I
    .end local v23    # "vip_goods_messages":[I
    .end local v24    # "vip_root_lins":[I
    .end local v25    # "vip_goods_rs":[I
    .end local v26    # "index":I
    .end local v27    # "i":I
    .end local v28    # "pay_qq_type":Ljava/lang/String;
    .end local v29    # "pay_wx_type":Ljava/lang/String;
    .end local v31    # "pay_other_type":Ljava/lang/String;
    .end local v32    # "pay_ali_name":Ljava/lang/String;
    .end local v33    # "jsonObject":Lorg/json/JSONObject;
    .end local v34    # "card":Ljava/lang/String;
    .end local v35    # "clock_state":Ljava/lang/String;
    .end local v36    # "pay_other_name":Ljava/lang/String;
    .end local v37    # "cv":Ljava/lang/String;
    .end local v38    # "pay_qq_name":Ljava/lang/String;
    .end local v40    # "gname":Ljava/lang/String;
    .end local v41    # "gmoney":Ljava/lang/String;
    .local v4, "object":Ljava/lang/Object;
    .local v5, "jsonArray":Lorg/json/JSONArray;
    .local v6, "vip_goods_gids":[I
    .local v7, "vip_goods_titles":[I
    .local v8, "vip_goods_prices":[I
    .local v9, "vip_goods_messages":[I
    .local v10, "vip_root_lins":[I
    .local v11, "vip_goods_rs":[I
    .local v12, "index":I
    .local v13, "i":I
    .restart local v14    # "jsonObject":Lorg/json/JSONObject;
    :cond_b
    move-object/from16 v16, v2

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move-object/from16 v33, v14

    move-object v6, v0

    .line 286
    .end local v4    # "object":Ljava/lang/Object;
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "vip_goods_gids":[I
    .end local v7    # "vip_goods_titles":[I
    .end local v8    # "vip_goods_prices":[I
    .end local v9    # "vip_goods_messages":[I
    .end local v10    # "vip_root_lins":[I
    .end local v11    # "vip_goods_rs":[I
    .end local v12    # "index":I
    .end local v13    # "i":I
    .end local v14    # "jsonObject":Lorg/json/JSONObject;
    .restart local v18    # "object":Ljava/lang/Object;
    .restart local v19    # "jsonArray":Lorg/json/JSONArray;
    .restart local v20    # "vip_goods_gids":[I
    .restart local v21    # "vip_goods_titles":[I
    .restart local v22    # "vip_goods_prices":[I
    .restart local v23    # "vip_goods_messages":[I
    .restart local v24    # "vip_root_lins":[I
    .restart local v25    # "vip_goods_rs":[I
    .restart local v26    # "index":I
    .restart local v27    # "i":I
    :goto_a
    move/from16 v12, v26

    .end local v26    # "index":I
    .restart local v12    # "index":I
    :goto_b
    add-int/lit8 v13, v27, 0x1

    move-object v0, v6

    move-object/from16 v2, v16

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    .end local v27    # "i":I
    .restart local v13    # "i":I
    goto/16 :goto_0

    .end local v18    # "object":Ljava/lang/Object;
    .end local v19    # "jsonArray":Lorg/json/JSONArray;
    .end local v20    # "vip_goods_gids":[I
    .end local v21    # "vip_goods_titles":[I
    .end local v22    # "vip_goods_prices":[I
    .end local v23    # "vip_goods_messages":[I
    .end local v24    # "vip_root_lins":[I
    .end local v25    # "vip_goods_rs":[I
    .restart local v4    # "object":Ljava/lang/Object;
    .restart local v5    # "jsonArray":Lorg/json/JSONArray;
    .restart local v6    # "vip_goods_gids":[I
    .restart local v7    # "vip_goods_titles":[I
    .restart local v8    # "vip_goods_prices":[I
    .restart local v9    # "vip_goods_messages":[I
    .restart local v10    # "vip_root_lins":[I
    .restart local v11    # "vip_goods_rs":[I
    :cond_c
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move/from16 v26, v12

    move/from16 v27, v13

    .end local v4    # "object":Ljava/lang/Object;
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "vip_goods_gids":[I
    .end local v7    # "vip_goods_titles":[I
    .end local v8    # "vip_goods_prices":[I
    .end local v9    # "vip_goods_messages":[I
    .end local v10    # "vip_root_lins":[I
    .end local v11    # "vip_goods_rs":[I
    .end local v12    # "index":I
    .end local v13    # "i":I
    .restart local v18    # "object":Ljava/lang/Object;
    .restart local v19    # "jsonArray":Lorg/json/JSONArray;
    .restart local v20    # "vip_goods_gids":[I
    .restart local v21    # "vip_goods_titles":[I
    .restart local v22    # "vip_goods_prices":[I
    .restart local v23    # "vip_goods_messages":[I
    .restart local v24    # "vip_root_lins":[I
    .restart local v25    # "vip_goods_rs":[I
    .restart local v26    # "index":I
    .restart local v27    # "i":I
    goto :goto_c

    .line 277
    .end local v18    # "object":Ljava/lang/Object;
    .end local v19    # "jsonArray":Lorg/json/JSONArray;
    .end local v20    # "vip_goods_gids":[I
    .end local v21    # "vip_goods_titles":[I
    .end local v22    # "vip_goods_prices":[I
    .end local v23    # "vip_goods_messages":[I
    .end local v24    # "vip_root_lins":[I
    .end local v25    # "vip_goods_rs":[I
    .end local v26    # "index":I
    .end local v27    # "i":I
    .restart local v4    # "object":Ljava/lang/Object;
    :cond_d
    move-object/from16 v18, v4

    .line 363
    .end local v4    # "object":Ljava/lang/Object;
    :goto_c
    goto :goto_d

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 364
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_d
    return-void
.end method

.method private getCard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;

    .line 1043
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 1044
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1045
    .local v14, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1046
    .local v9, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1047
    .local v10, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1048
    .local v11, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1049
    .local v12, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1050
    .local v13, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    .line 1051
    .local v8, "miType":I
    new-instance v0, Lcom/shenma/tvlauncher/EmpowerActivity$30;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/api.php?app="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/Api;->JUHEQQ692000321_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&act=card"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shenma/tvlauncher/EmpowerActivity$28;

    invoke-direct {v4, p0}, Lcom/shenma/tvlauncher/EmpowerActivity$28;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    new-instance v5, Lcom/shenma/tvlauncher/EmpowerActivity$29;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/EmpowerActivity$29;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    const/4 v2, 0x1

    move-object v1, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-direct/range {v0 .. v13}, Lcom/shenma/tvlauncher/EmpowerActivity$30;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1093
    return-void
.end method

.method private initData()V
    .locals 0

    .line 183
    invoke-direct {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->Getgoods()V

    .line 184
    invoke-direct {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->GetText()V

    .line 185
    invoke-direct {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->GetInfo()V

    .line 186
    return-void
.end method

.method private loadImg(I)V
    .locals 12
    .param p1, "type"    # I

    .line 1176
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v7, 0x2

    const v8, 0x3f666666    # 0.9f

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1177
    .local v0, "mAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1178
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 1179
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    goto :goto_0

    .line 1181
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 1183
    :goto_0
    iget-object v3, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->mQrLineView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1184
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1185
    iget-object v1, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->mQrLineView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1186
    new-instance v1, Lcom/shenma/tvlauncher/EmpowerActivity$31;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/EmpowerActivity$31;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1199
    if-ne p1, v2, :cond_1

    .line 1200
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->Qr_code_Url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->empower_iv_pay_ecode:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 1201
    return-void

    .line 1206
    :cond_1
    iget-object v1, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->way:Ljava/lang/String;

    const-string/jumbo v2, "wx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1207
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->wx:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v10, v1

    .local v1, "logoBitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 1208
    .end local v1    # "logoBitmap":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v1, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->way:Ljava/lang/String;

    const-string v2, "ali"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1209
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->ali:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v10, v1

    .restart local v1    # "logoBitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 1210
    .end local v1    # "logoBitmap":Landroid/graphics/Bitmap;
    :cond_3
    iget-object v1, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->way:Ljava/lang/String;

    const-string v2, "qq"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1211
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->qq:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v10, v1

    .restart local v1    # "logoBitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 1212
    .end local v1    # "logoBitmap":Landroid/graphics/Bitmap;
    :cond_4
    iget-object v1, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->way:Ljava/lang/String;

    const-string v2, "other"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1213
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->other:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v10, v1

    .restart local v1    # "logoBitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 1214
    .end local v1    # "logoBitmap":Landroid/graphics/Bitmap;
    :cond_5
    iget-object v1, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->way:Ljava/lang/String;

    const-string v2, "icon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1215
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->icon:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v10, v1

    .restart local v1    # "logoBitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 1217
    .end local v1    # "logoBitmap":Landroid/graphics/Bitmap;
    :cond_6
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->other:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v10, v1

    .line 1219
    .local v10, "logoBitmap":Landroid/graphics/Bitmap;
    :goto_1
    iget-object v2, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->empower_url:Ljava/lang/String;

    const/4 v9, -0x1

    const/high16 v11, 0x40000000    # 2.0f

    const/16 v3, 0x190

    const/16 v4, 0x190

    const-string v5, "UTF-8"

    const-string v6, "Q"

    const-string v7, "1"

    const/high16 v8, -0x1000000

    invoke-static/range {v2 .. v11}, Lcom/shenma/tvlauncher/utils/Utils;->createQRCodeBitmap(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1220
    .local v1, "empower":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->empower_iv_pay_ecode:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1221
    return-void
.end method

.method private vip_goods_r_1()V
    .locals 10

    .line 625
    const/4 v0, 0x1

    iput v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->stoppay:I

    .line 626
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_gid_1:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 627
    .local v7, "open_ring":Ljava/lang/String;
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_1_price:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->goodsmoney:Ljava/lang/String;

    .line 628
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_1_title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->goodsname:Ljava/lang/String;

    .line 629
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "userName"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 630
    .local v6, "username":Ljava/lang/String;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMddHHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 631
    .local v0, "sdfTwo":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 632
    .local v4, "timeMillis":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 633
    .local v3, "time":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v8, v1

    .line 634
    .local v8, "alertBuilder":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/shenma/tvlauncher/R$string;->Please_select:I

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 635
    iget-object v9, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->Pay_Name:[Ljava/lang/String;

    new-instance v1, Lcom/shenma/tvlauncher/EmpowerActivity$15;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/shenma/tvlauncher/EmpowerActivity$15;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 643
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, v2, Lcom/shenma/tvlauncher/EmpowerActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 644
    iget-object v1, v2, Lcom/shenma/tvlauncher/EmpowerActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 645
    return-void
.end method

.method private vip_goods_r_2()V
    .locals 10

    .line 649
    const/4 v0, 0x1

    iput v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->stoppay:I

    .line 650
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_gid_2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 651
    .local v7, "open_ring":Ljava/lang/String;
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_2_price:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->goodsmoney:Ljava/lang/String;

    .line 652
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_2_title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->goodsname:Ljava/lang/String;

    .line 653
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "userName"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 654
    .local v6, "username":Ljava/lang/String;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMddHHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 655
    .local v0, "sdfTwo":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 656
    .local v4, "timeMillis":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 657
    .local v3, "time":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v8, v1

    .line 658
    .local v8, "alertBuilder":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/shenma/tvlauncher/R$string;->Please_select:I

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 659
    iget-object v9, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->Pay_Name:[Ljava/lang/String;

    new-instance v1, Lcom/shenma/tvlauncher/EmpowerActivity$16;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/shenma/tvlauncher/EmpowerActivity$16;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 667
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, v2, Lcom/shenma/tvlauncher/EmpowerActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 668
    iget-object v1, v2, Lcom/shenma/tvlauncher/EmpowerActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 669
    return-void
.end method

.method private vip_goods_r_3()V
    .locals 10

    .line 673
    const/4 v0, 0x1

    iput v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->stoppay:I

    .line 674
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_gid_3:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 675
    .local v7, "open_ring":Ljava/lang/String;
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_3_price:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->goodsmoney:Ljava/lang/String;

    .line 676
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_3_title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->goodsname:Ljava/lang/String;

    .line 677
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "userName"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 678
    .local v6, "username":Ljava/lang/String;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMddHHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 679
    .local v0, "sdfTwo":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 680
    .local v4, "timeMillis":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 681
    .local v3, "time":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v8, v1

    .line 682
    .local v8, "alertBuilder":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/shenma/tvlauncher/R$string;->Please_select:I

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 683
    iget-object v9, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->Pay_Name:[Ljava/lang/String;

    new-instance v1, Lcom/shenma/tvlauncher/EmpowerActivity$17;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/shenma/tvlauncher/EmpowerActivity$17;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 691
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, v2, Lcom/shenma/tvlauncher/EmpowerActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 692
    iget-object v1, v2, Lcom/shenma/tvlauncher/EmpowerActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 693
    return-void
.end method

.method private vip_goods_r_4()V
    .locals 10

    .line 697
    const/4 v0, 0x1

    iput v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->stoppay:I

    .line 698
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_gid_4:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 699
    .local v7, "open_ring":Ljava/lang/String;
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_4_price:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->goodsmoney:Ljava/lang/String;

    .line 700
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_4_title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->goodsname:Ljava/lang/String;

    .line 701
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "userName"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 702
    .local v6, "username":Ljava/lang/String;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMddHHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 703
    .local v0, "sdfTwo":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 704
    .local v4, "timeMillis":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 705
    .local v3, "time":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v8, v1

    .line 706
    .local v8, "alertBuilder":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/shenma/tvlauncher/R$string;->Please_select:I

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 707
    iget-object v9, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->Pay_Name:[Ljava/lang/String;

    new-instance v1, Lcom/shenma/tvlauncher/EmpowerActivity$18;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/shenma/tvlauncher/EmpowerActivity$18;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 715
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, v2, Lcom/shenma/tvlauncher/EmpowerActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 716
    iget-object v1, v2, Lcom/shenma/tvlauncher/EmpowerActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 717
    return-void
.end method

.method private vip_root_card()V
    .locals 2

    .line 721
    const/4 v0, 0x1

    iput v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->stoppay:I

    .line 722
    invoke-direct {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->GetText()V

    .line 723
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->qr_code_text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->Qr_code_text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 724
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->payviewlayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 725
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->kmviewlayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 726
    sget v0, Lcom/shenma/tvlauncher/R$id;->box_layout:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$drawable;->frame_no:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 727
    return-void
.end method

.method private vip_root_fen()V
    .locals 2

    .line 731
    const/4 v0, 0x1

    iput v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->stoppay:I

    .line 732
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/shenma/tvlauncher/SettingActActvity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->startActivity(Landroid/content/Intent;)V

    .line 733
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/shenma/tvlauncher/EmpowerActivity;->overridePendingTransition(II)V

    .line 734
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->finish()V

    .line 735
    return-void
.end method


# virtual methods
.method public CardResponse(Ljava/lang/String;)V
    .locals 10
    .param p1, "response"    # Ljava/lang/String;

    .line 1097
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1098
    .local v0, "RSAKEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1099
    .local v2, "AESKEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1100
    .local v3, "AESIV":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1103
    .local v1, "RC4KEY":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1104
    .local v4, "jSONObject":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 1105
    .local v5, "code":I
    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1106
    .local v6, "miType":I
    const/4 v8, 0x0

    .line 1107
    .local v8, "msg":Ljava/lang/String;
    const-string v9, "msg"

    if-ne v6, v7, :cond_0

    .line 1108
    :try_start_1
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    goto :goto_0

    .line 1109
    :cond_0
    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 1110
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    goto :goto_0

    .line 1111
    :cond_1
    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 1112
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7, v3}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v8, v7

    .line 1114
    :cond_2
    :goto_0
    const/16 v7, 0xc8

    const-string v9, "UTF-8"

    if-ne v5, v7, :cond_3

    .line 1115
    :try_start_2
    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget v9, Lcom/shenma/tvlauncher/R$drawable;->toast_smile:I

    invoke-static {p0, v7, v9}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1116
    invoke-direct {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->GetInfo()V

    goto :goto_1

    .line 1118
    :cond_3
    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->Msg:Ljava/lang/String;

    .line 1119
    iget-object v7, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v9, 0x5

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1123
    .end local v4    # "jSONObject":Lorg/json/JSONObject;
    .end local v5    # "code":I
    .end local v6    # "miType":I
    .end local v8    # "msg":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 1121
    :catch_0
    move-exception v4

    .line 1122
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1124
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public Error(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .line 472
    instance-of v0, p1, Lcom/android/volley/TimeoutError;

    .line 475
    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    .line 478
    instance-of v0, p1, Lcom/android/volley/NetworkError;

    .line 481
    instance-of v0, p1, Lcom/android/volley/ServerError;

    .line 485
    return-void
.end method

.method public GetpayResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "PayType"    # Ljava/lang/String;

    .line 796
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 797
    .local v0, "RSAKEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 798
    .local v2, "RC4KEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 799
    .local v3, "AESKEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 801
    .local v1, "AESIV":Ljava/lang/String;
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->loadingClose_Tv()V

    .line 803
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 804
    .local v4, "jSONObject":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 805
    .local v5, "code":I
    const-string v6, "msg"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 806
    .local v6, "msg":Ljava/lang/String;
    const/16 v7, 0xc8

    const/4 v8, 0x3

    if-ne v5, v7, :cond_1

    .line 807
    const-string v7, "order"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 808
    .local v7, "order":Ljava/lang/String;
    const-string v9, "qr_url"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 809
    .local v9, "qr_url":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 810
    iput-object v9, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->empower_url:Ljava/lang/String;

    .line 811
    iput-object v7, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->orders:Ljava/lang/String;

    .line 812
    const/4 v10, 0x0

    iput v10, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->empower_type:I

    .line 813
    iget-object v11, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v11, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 814
    iget-object v8, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->qr_code_text:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/shenma/tvlauncher/R$string;->Scan_code_to_purchase:I

    invoke-virtual {p0, v12}, Lcom/shenma/tvlauncher/EmpowerActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->goodsname:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->goodsmoney:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 815
    iput v10, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->stoppay:I

    .line 816
    iget-object v8, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v10, 0x6

    const-wide/16 v11, 0xfa0

    invoke-virtual {v8, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 817
    sget v8, Lcom/shenma/tvlauncher/R$string;->Scan_QR_code:I

    sget v10, Lcom/shenma/tvlauncher/R$drawable;->toast_smile:I

    invoke-static {p0, v8, v10}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 820
    :cond_0
    invoke-direct {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->GetText()V

    .line 821
    sget v8, Lcom/shenma/tvlauncher/R$string;->Order_exception:I

    sget v10, Lcom/shenma/tvlauncher/R$drawable;->toast_shut:I

    invoke-static {p0, v8, v10}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 823
    .end local v7    # "order":Ljava/lang/String;
    .end local v9    # "qr_url":Ljava/lang/String;
    :goto_0
    goto :goto_2

    .line 824
    :cond_1
    const/4 v7, 0x1

    iput v7, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->stoppay:I

    .line 825
    iget-object v9, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->qr_code_text:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->Qr_code_text:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 826
    sget-object v9, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    invoke-static {p0, v9, v7}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    .local v9, "miType":I
    const-string v10, "UTF-8"

    if-ne v9, v7, :cond_2

    .line 828
    :try_start_1
    invoke-static {v6, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->Msg:Ljava/lang/String;

    goto :goto_1

    .line 829
    :cond_2
    const/4 v7, 0x2

    if-ne v9, v7, :cond_3

    .line 830
    invoke-static {v6, v0}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->Msg:Ljava/lang/String;

    goto :goto_1

    .line 831
    :cond_3
    if-ne v9, v8, :cond_4

    .line 832
    invoke-static {v3, v6, v1}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->Msg:Ljava/lang/String;

    .line 834
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->GetText()V

    .line 835
    iget-object v7, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 839
    .end local v4    # "jSONObject":Lorg/json/JSONObject;
    .end local v5    # "code":I
    .end local v6    # "msg":Ljava/lang/String;
    .end local v9    # "miType":I
    :goto_2
    goto :goto_3

    .line 837
    :catch_0
    move-exception v4

    .line 838
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 840
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method public GoodsResponse(Ljava/lang/String;)V
    .locals 9
    .param p1, "response"    # Ljava/lang/String;

    .line 243
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "RC4KEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 245
    .local v2, "RSAKEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 246
    .local v3, "AESKEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 250
    .local v4, "jSONObject":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 251
    .local v5, "code":I
    const/16 v6, 0xc8

    if-ne v5, v6, :cond_3

    .line 252
    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 253
    .local v6, "miType":I
    const-string v8, "msg"

    if-ne v6, v7, :cond_0

    .line 254
    :try_start_1
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->goods:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 255
    :cond_0
    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 257
    :try_start_2
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->goods:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 258
    :catch_0
    move-exception v7

    .line 259
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 260
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 261
    :cond_1
    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 262
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7, v1}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->goods:Ljava/lang/String;

    .line 264
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 265
    nop

    .end local v6    # "miType":I
    goto :goto_2

    .line 266
    :cond_3
    invoke-direct {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_root_card()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 270
    .end local v4    # "jSONObject":Lorg/json/JSONObject;
    .end local v5    # "code":I
    :goto_2
    goto :goto_3

    .line 268
    :catch_1
    move-exception v4

    .line 269
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 271
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method public InfoResponse(Ljava/lang/String;)V
    .locals 17
    .param p1, "response"    # Ljava/lang/String;

    .line 993
    move-object/from16 v1, p0

    const-string v0, "fen"

    const-string/jumbo v2, "vip"

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v1, v3, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 994
    .local v3, "RSAKEY":Ljava/lang/String;
    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v1, v5, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 995
    .local v5, "AESKEY":Ljava/lang/String;
    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v1, v6, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 996
    .local v6, "AESIV":Ljava/lang/String;
    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {v1, v7, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 999
    .local v7, "RC4KEY":Ljava/lang/String;
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v9, p1

    :try_start_1
    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1000
    .local v8, "jSONObject":Lorg/json/JSONObject;
    const-string v10, "code"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    .line 1001
    .local v10, "code":I
    const-string v11, "msg"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1002
    .local v11, "msg":Ljava/lang/String;
    sget-object v12, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-static {v1, v12, v13}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1003
    .local v12, "miType":I
    const/4 v14, 0x0

    .line 1004
    .local v14, "jSON":Lorg/json/JSONObject;
    if-ne v12, v13, :cond_0

    .line 1005
    :try_start_2
    new-instance v13, Lorg/json/JSONObject;

    invoke-static {v11, v7}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v14, v13

    goto :goto_0

    .line 1036
    .end local v8    # "jSONObject":Lorg/json/JSONObject;
    .end local v10    # "code":I
    .end local v11    # "msg":Ljava/lang/String;
    .end local v12    # "miType":I
    .end local v14    # "jSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    move-object/from16 v16, v3

    goto/16 :goto_4

    .line 1006
    .restart local v8    # "jSONObject":Lorg/json/JSONObject;
    .restart local v10    # "code":I
    .restart local v11    # "msg":Ljava/lang/String;
    .restart local v12    # "miType":I
    .restart local v14    # "jSON":Lorg/json/JSONObject;
    :cond_0
    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    .line 1007
    new-instance v13, Lorg/json/JSONObject;

    invoke-static {v11, v3}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v14, v13

    goto :goto_0

    .line 1008
    :cond_1
    const/4 v13, 0x3

    if-ne v12, v13, :cond_2

    .line 1009
    new-instance v13, Lorg/json/JSONObject;

    invoke-static {v5, v11, v6}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v14, v13

    .line 1011
    :cond_2
    :goto_0
    :try_start_3
    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1012
    .local v13, "vip":Ljava/lang/String;
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1013
    .local v15, "fen":Ljava/lang/String;
    move-object/from16 v16, v3

    .end local v3    # "RSAKEY":Ljava/lang/String;
    .local v16, "RSAKEY":Ljava/lang/String;
    const/16 v3, 0xc8

    if-ne v10, v3, :cond_5

    .line 1014
    :try_start_4
    iput-object v13, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->viptime:Ljava/lang/String;

    .line 1015
    iget-object v3, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->jifen:Landroid/widget/TextView;

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1016
    iget-object v3, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1017
    invoke-interface {v3, v2, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1018
    invoke-interface {v2, v0, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1019
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1020
    iget-object v0, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->viptime:Ljava/lang/String;

    const-string v2, "999999999"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1021
    iget-object v0, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->Long_Qr_code_Url:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1022
    sget v0, Lcom/shenma/tvlauncher/R$id;->box_layout:I

    invoke-virtual {v1, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->frame_no:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1023
    iget-object v0, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->Long_Qr_code_Url:Ljava/lang/String;

    iput-object v0, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->Qr_code_Url:Ljava/lang/String;

    .line 1024
    const/4 v0, 0x1

    iput v0, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->empower_type:I

    .line 1025
    iget-object v0, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->qr_code_text:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1026
    iget-object v0, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->boxLayout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1027
    iget-object v0, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->ivLiftlongMember:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1029
    :cond_3
    iget-object v0, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 1031
    :cond_4
    iget-object v0, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1033
    :goto_1
    iget-object v0, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 1036
    .end local v8    # "jSONObject":Lorg/json/JSONObject;
    .end local v10    # "code":I
    .end local v11    # "msg":Ljava/lang/String;
    .end local v12    # "miType":I
    .end local v13    # "vip":Ljava/lang/String;
    .end local v14    # "jSON":Lorg/json/JSONObject;
    .end local v15    # "fen":Ljava/lang/String;
    :catch_1
    move-exception v0

    goto :goto_4

    .line 1038
    :cond_5
    :goto_2
    goto :goto_5

    .line 1036
    .end local v16    # "RSAKEY":Ljava/lang/String;
    .restart local v3    # "RSAKEY":Ljava/lang/String;
    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v9, p1

    :goto_3
    move-object/from16 v16, v3

    .line 1037
    .end local v3    # "RSAKEY":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "RSAKEY":Ljava/lang/String;
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1039
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    return-void
.end method

.method public Querypay()V
    .locals 13

    .line 844
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 845
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 846
    .local v12, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 847
    .local v7, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 848
    .local v8, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 849
    .local v9, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 850
    .local v10, "AESIV":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 851
    .local v11, "Appkey":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 852
    .local v6, "miType":I
    new-instance v0, Lcom/shenma/tvlauncher/EmpowerActivity$24;

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

    const-string v3, "&act=pay_res"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shenma/tvlauncher/EmpowerActivity$22;

    invoke-direct {v4, p0}, Lcom/shenma/tvlauncher/EmpowerActivity$22;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    new-instance v5, Lcom/shenma/tvlauncher/EmpowerActivity$23;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/EmpowerActivity$23;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    const/4 v2, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/shenma/tvlauncher/EmpowerActivity$24;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 893
    return-void
.end method

.method public QuerypayResponse(Ljava/lang/String;)V
    .locals 10
    .param p1, "response"    # Ljava/lang/String;

    .line 897
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 898
    .local v0, "RSAKEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 899
    .local v2, "RC4KEY":Ljava/lang/String;
    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 900
    .local v3, "AESKEY":Ljava/lang/String;
    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 903
    .local v1, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 904
    .local v4, "jSONObject":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 905
    .local v5, "code":I
    const/16 v6, 0xc8

    const/4 v7, 0x1

    if-ne v5, v6, :cond_0

    .line 906
    iput v7, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->stoppay:I

    .line 907
    invoke-direct {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->GetText()V

    .line 908
    iget-object v6, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->qr_code_text:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->Qr_code_text:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 909
    invoke-direct {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->GetInfo()V

    .line 910
    sget v6, Lcom/shenma/tvlauncher/R$string;->Recharged_successfully:I

    sget v7, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {p0, v6, v7}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 911
    :cond_0
    const/16 v6, 0x9a

    if-ne v5, v6, :cond_1

    .line 912
    const/4 v6, 0x0

    iput v6, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->stoppay:I

    .line 913
    iget-object v6, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v7, 0x6

    const-wide/16 v8, 0xfa0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 914
    :cond_1
    const/16 v6, 0xc9

    if-ne v5, v6, :cond_2

    .line 916
    iput v7, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->stoppay:I

    .line 919
    iget-object v6, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->qr_code_text:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->Qr_code_text:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 920
    iget-object v6, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 921
    :cond_2
    const/16 v6, 0x9b

    if-ne v5, v6, :cond_3

    .line 923
    invoke-direct {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->GetText()V

    .line 924
    iget-object v6, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->qr_code_text:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->Qr_code_text:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 925
    sget v6, Lcom/shenma/tvlauncher/R$string;->unknown_error:I

    sget v7, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {p0, v6, v7}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 926
    :cond_3
    const/16 v6, 0x99

    if-ne v5, v6, :cond_4

    .line 928
    invoke-direct {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->GetText()V

    .line 929
    iget-object v6, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->qr_code_text:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->Qr_code_text:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 930
    sget v6, Lcom/shenma/tvlauncher/R$string;->Order_does_not_exist:I

    sget v7, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {p0, v6, v7}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 934
    .end local v4    # "jSONObject":Lorg/json/JSONObject;
    .end local v5    # "code":I
    :cond_4
    :goto_0
    goto :goto_1

    .line 932
    :catch_0
    move-exception v4

    .line 933
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 935
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method public TextResponse(Ljava/lang/String;)V
    .locals 17
    .param p1, "response"    # Ljava/lang/String;

    .line 423
    move-object/from16 v1, p0

    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 424
    .local v3, "User_url":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 425
    .local v4, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 426
    .local v5, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 427
    .local v6, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 430
    .local v7, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v8, p1

    :try_start_1
    invoke-direct {v0, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 431
    .local v0, "jSONObject":Lorg/json/JSONObject;
    const-string v9, "code"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    .line 432
    .local v9, "code":I
    sget-object v10, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-static {v1, v10, v11}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 433
    .local v10, "miType":I
    const/4 v12, 0x0

    .line 434
    .local v12, "msg":Lorg/json/JSONObject;
    const-string v13, "UTF-8"

    const-string v14, "msg"

    if-ne v10, v11, :cond_0

    .line 435
    :try_start_2
    new-instance v15, Lorg/json/JSONObject;

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v13}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v15, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v12, v15

    goto :goto_0

    .line 436
    :cond_0
    const/4 v15, 0x2

    if-ne v10, v15, :cond_1

    .line 437
    new-instance v15, Lorg/json/JSONObject;

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v5}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v13}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v15, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v12, v15

    goto :goto_0

    .line 438
    :cond_1
    const/4 v15, 0x3

    if-ne v10, v15, :cond_2

    .line 439
    new-instance v15, Lorg/json/JSONObject;

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14, v7}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v13}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v15, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v12, v15

    .line 441
    :cond_2
    :goto_0
    const-string v13, "content"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 442
    .local v13, "content":Ljava/lang/String;
    const-string v14, "qr_code_url"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 443
    .local v14, "qrCodeUrl":Ljava/lang/String;
    const-string v15, "long_qr_code_url"

    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 444
    .local v15, "LongQrCodeUrl":Ljava/lang/String;
    const-string v11, "pay_text"

    invoke-virtual {v12, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 445
    .local v11, "pay_text":Ljava/lang/String;
    move-object/from16 v16, v0

    .end local v0    # "jSONObject":Lorg/json/JSONObject;
    .local v16, "jSONObject":Lorg/json/JSONObject;
    const/16 v0, 0xc8

    if-ne v9, v0, :cond_6

    .line 446
    const-string v0, "null"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 447
    iget-object v0, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->empower_pay_text:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    :cond_3
    iget-object v0, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->qr_code_text:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    iput-object v13, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->Qr_code_text:Ljava/lang/String;

    .line 451
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 452
    iput-object v15, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->Long_Qr_code_Url:Ljava/lang/String;

    .line 454
    :cond_4
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 455
    iput-object v14, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->Qr_code_Url:Ljava/lang/String;

    .line 456
    const/4 v0, 0x1

    iput v0, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->empower_type:I

    goto :goto_1

    .line 458
    :cond_5
    const-string v0, "icon"

    iput-object v0, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->way:Ljava/lang/String;

    .line 459
    const/4 v0, 0x0

    iput v0, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->empower_type:I

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/Webpage/?app="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/Api;->JUHEQQ692000321_ID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->empower_url:Ljava/lang/String;

    .line 463
    :cond_6
    :goto_1
    iget-object v0, v1, Lcom/shenma/tvlauncher/EmpowerActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 466
    nop

    .end local v9    # "code":I
    .end local v10    # "miType":I
    .end local v11    # "pay_text":Ljava/lang/String;
    .end local v12    # "msg":Lorg/json/JSONObject;
    .end local v13    # "content":Ljava/lang/String;
    .end local v14    # "qrCodeUrl":Ljava/lang/String;
    .end local v15    # "LongQrCodeUrl":Ljava/lang/String;
    .end local v16    # "jSONObject":Lorg/json/JSONObject;
    goto :goto_3

    .line 464
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v8, p1

    .line 465
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 467
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method protected findViewById()V
    .locals 2

    .line 535
    sget v0, Lcom/shenma/tvlauncher/R$id;->scan_line:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->mQrLineView:Landroid/widget/ImageView;

    .line 536
    sget v0, Lcom/shenma/tvlauncher/R$id;->empower_code:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    .line 537
    sget v0, Lcom/shenma/tvlauncher/R$id;->empower_btn_sendCode:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->sendCode:Landroid/widget/Button;

    .line 538
    sget v0, Lcom/shenma/tvlauncher/R$id;->empower_codestr:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->account:Landroid/widget/TextView;

    .line 539
    sget v0, Lcom/shenma/tvlauncher/R$id;->empower_fen:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->jifen:Landroid/widget/TextView;

    .line 540
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->jifen:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 541
    sget v0, Lcom/shenma/tvlauncher/R$id;->empower_time:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vipTime:Landroid/widget/TextView;

    .line 542
    sget v0, Lcom/shenma/tvlauncher/R$id;->empower_search_keybord_input:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->editCode:Landroid/widget/EditText;

    .line 543
    sget v0, Lcom/shenma/tvlauncher/R$id;->empower_pay_text:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->empower_pay_text:Landroid/widget/TextView;

    .line 544
    sget v0, Lcom/shenma/tvlauncher/R$id;->empower_iv_pay_ecode:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->empower_iv_pay_ecode:Landroid/widget/ImageView;

    .line 545
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_goods_r_1:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_r_1:Landroid/widget/RelativeLayout;

    .line 546
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_goods_r_2:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_r_2:Landroid/widget/RelativeLayout;

    .line 547
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_goods_r_3:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_r_3:Landroid/widget/RelativeLayout;

    .line 548
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_goods_r_4:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_r_4:Landroid/widget/RelativeLayout;

    .line 549
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_goods_1_message:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_1_message:Landroid/widget/TextView;

    .line 550
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_goods_1_title:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_1_title:Landroid/widget/TextView;

    .line 551
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_goods_1_price:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_1_price:Landroid/widget/TextView;

    .line 552
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_goods_gid_1:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_gid_1:Landroid/widget/TextView;

    .line 553
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_root_lin_1:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_root_lin_1:Landroid/widget/LinearLayout;

    .line 554
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_goods_2_message:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_2_message:Landroid/widget/TextView;

    .line 555
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_goods_2_title:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_2_title:Landroid/widget/TextView;

    .line 556
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_goods_2_price:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_2_price:Landroid/widget/TextView;

    .line 557
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_root_lin_2:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_root_lin_2:Landroid/widget/LinearLayout;

    .line 558
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_goods_r_2:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_r_2:Landroid/widget/RelativeLayout;

    .line 559
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_goods_gid_2:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_gid_2:Landroid/widget/TextView;

    .line 560
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_goods_3_message:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_3_message:Landroid/widget/TextView;

    .line 561
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_goods_3_title:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_3_title:Landroid/widget/TextView;

    .line 562
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_goods_3_price:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_3_price:Landroid/widget/TextView;

    .line 563
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_root_lin_3:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_root_lin_3:Landroid/widget/LinearLayout;

    .line 564
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_goods_r_3:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_r_3:Landroid/widget/RelativeLayout;

    .line 565
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_goods_gid_3:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_gid_3:Landroid/widget/TextView;

    .line 566
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_goods_4_message:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_4_message:Landroid/widget/TextView;

    .line 567
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_goods_4_title:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_4_title:Landroid/widget/TextView;

    .line 568
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_goods_4_price:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_4_price:Landroid/widget/TextView;

    .line 569
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_root_lin_4:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_root_lin_4:Landroid/widget/LinearLayout;

    .line 570
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_goods_r_4:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_r_4:Landroid/widget/RelativeLayout;

    .line 571
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_goods_gid_4:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_gid_4:Landroid/widget/TextView;

    .line 572
    sget v0, Lcom/shenma/tvlauncher/R$id;->kmviewlayout:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->kmviewlayout:Landroid/widget/LinearLayout;

    .line 573
    sget v0, Lcom/shenma/tvlauncher/R$id;->payviewlayout:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->payviewlayout:Landroid/widget/LinearLayout;

    .line 574
    sget v0, Lcom/shenma/tvlauncher/R$id;->qr_code_text:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->qr_code_text:Landroid/widget/TextView;

    .line 575
    sget v0, Lcom/shenma/tvlauncher/R$id;->iv_liftlong_member:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->ivLiftlongMember:Landroid/widget/ImageView;

    .line 576
    sget v0, Lcom/shenma/tvlauncher/R$id;->box_layout:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->boxLayout:Landroid/view/View;

    .line 577
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_r_1:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/shenma/tvlauncher/EmpowerActivity$8;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/EmpowerActivity$8;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 582
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_r_2:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/shenma/tvlauncher/EmpowerActivity$9;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/EmpowerActivity$9;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 587
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_r_3:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/shenma/tvlauncher/EmpowerActivity$10;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/EmpowerActivity$10;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 592
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_r_4:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/shenma/tvlauncher/EmpowerActivity$11;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/EmpowerActivity$11;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 597
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_card:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_card:Landroid/widget/LinearLayout;

    .line 598
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_root_card:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_root_card:Landroid/widget/RelativeLayout;

    .line 599
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_root_card:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/shenma/tvlauncher/EmpowerActivity$12;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/EmpowerActivity$12;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 604
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_convert:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_convert:Landroid/widget/LinearLayout;

    .line 605
    sget v0, Lcom/shenma/tvlauncher/R$id;->vip_root_fen:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_root_fen:Landroid/widget/RelativeLayout;

    .line 606
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_root_fen:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/shenma/tvlauncher/EmpowerActivity$13;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/EmpowerActivity$13;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 613
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->sendCode:Landroid/widget/Button;

    new-instance v1, Lcom/shenma/tvlauncher/EmpowerActivity$14;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/EmpowerActivity$14;-><init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 621
    return-void
.end method

.method protected initView()V
    .locals 11

    .line 489
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_r_1:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 490
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_r_2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 491
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_r_3:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 492
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_r_4:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 493
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_root_lin_1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_root_lin_2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_root_lin_3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 496
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_root_lin_4:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 497
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_convert:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 498
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vip_card:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 499
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->account:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 500
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->account:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "userName"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->jifen:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 502
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->jifen:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->sp:Landroid/content/SharedPreferences;

    const-string v4, "fen"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vipTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 504
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 505
    .local v0, "format":Ljava/text/SimpleDateFormat;
    iget-object v3, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "vip"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 506
    .local v3, "time":Ljava/lang/String;
    const/4 v4, 0x0

    .line 508
    .local v4, "vipstate":I
    :try_start_0
    new-instance v6, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v3, v5}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v10, v6, v8

    if-gez v10, :cond_0

    .line 509
    const/4 v4, 0x1

    goto :goto_0

    .line 511
    :cond_0
    const/4 v4, 0x0

    .line 515
    :goto_0
    goto :goto_1

    .line 513
    :catch_0
    move-exception v6

    .line 514
    .local v6, "e":Ljava/text/ParseException;
    invoke-virtual {v6}, Ljava/text/ParseException;->printStackTrace()V

    .line 516
    .end local v6    # "e":Ljava/text/ParseException;
    :goto_1
    const-string v6, "999999999"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 517
    iget-object v6, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vipTime:Landroid/widget/TextView;

    sget v7, Lcom/shenma/tvlauncher/R$string;->Lifetime_VIP:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 518
    iget-object v6, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->qr_code_text:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v5, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->boxLayout:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 520
    iget-object v1, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->ivLiftlongMember:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 521
    :cond_1
    if-nez v4, :cond_2

    .line 522
    iget-object v1, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vipTime:Landroid/widget/TextView;

    sget v2, Lcom/shenma/tvlauncher/R$string;->Expired:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 523
    :cond_2
    const/4 v1, 0x1

    if-ne v4, v1, :cond_3

    .line 524
    iget-object v1, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->vipTime:Landroid/widget/TextView;

    invoke-static {v3, v5}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    :cond_3
    :goto_2
    return-void
.end method

.method protected loadViewLayout()V
    .locals 0

    .line 530
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1162
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onBackPressed()V

    .line 1163
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 1164
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 1166
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->stoppay:I

    .line 1167
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 174
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 175
    sget v0, Lcom/shenma/tvlauncher/R$layout;->layout_empower:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->setContentView(I)V

    .line 176
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->findViewById()V

    .line 177
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->initView()V

    .line 178
    invoke-direct {p0}, Lcom/shenma/tvlauncher/EmpowerActivity;->initData()V

    .line 179
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1143
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onDestroy()V

    .line 1144
    const/4 v0, 0x1

    iput v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->stoppay:I

    .line 1145
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 1148
    :cond_0
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/shenma/tvlauncher/EmpowerActivity;->overridePendingTransition(II)V

    .line 1150
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1154
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onPause()V

    .line 1155
    const-string v0, "EmpowerActivity"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 1156
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 1158
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 1128
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onStart()V

    .line 1130
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1134
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onStop()V

    .line 1135
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 1139
    :cond_0
    return-void
.end method

.method protected setListener()V
    .locals 0

    .line 1171
    return-void
.end method
