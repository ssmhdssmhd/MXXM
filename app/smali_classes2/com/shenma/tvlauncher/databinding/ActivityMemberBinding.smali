.class public final Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;
.super Ljava/lang/Object;
.source "ActivityMemberBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final aboutUs:Landroid/widget/TextView;

.field public final accountInfo:Landroid/widget/LinearLayout;

.field public final activityCenter:Landroid/widget/TextView;

.field public final advancedSettings:Landroid/widget/LinearLayout;

.field public final backgroundSettings:Landroid/widget/LinearLayout;

.field public final btLogin:Landroid/widget/Button;

.field public final clearHistory:Landroid/widget/LinearLayout;

.field public final filterContainer:Landroid/widget/LinearLayout;

.field public final filterContent:Landroid/widget/TextView;

.field public final framelayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final icon:Landroid/widget/ImageView;

.field public final imgIcon:Landroid/widget/ImageView;

.field public final imgQrCode:Landroid/widget/ImageView;

.field public final infoContainer:Landroid/widget/LinearLayout;

.field public final invitationRewards:Landroidx/cardview/widget/CardView;

.field public final iv:Landroid/widget/ImageView;

.field public final ivMember:Landroid/widget/ImageView;

.field public final ivTopBottom:Landroid/widget/ImageView;

.field public final ivTopLine:Landroid/widget/ImageView;

.field public final jifenData:Landroid/widget/TextView;

.field public final leftPanel:Landroid/widget/RelativeLayout;

.field public final llMember:Landroid/widget/LinearLayout;

.field public final llQrCode:Landroid/widget/LinearLayout;

.field public final member:Landroid/widget/FrameLayout;

.field public final memberData:Landroid/widget/TextView;

.field public final memberSetting:Landroid/widget/LinearLayout;

.field public final mineCollect:Landroidx/cardview/widget/CardView;

.field public final otherSettings:Landroid/widget/TextView;

.field public final playHistory:Landroidx/cardview/widget/CardView;

.field public final rbUser:Landroid/widget/RadioButton;

.field public final rbUserAlert:Landroid/widget/RadioButton;

.field public final rbUserApp:Landroid/widget/RadioButton;

.field public final rbUserBackgroundSetting:Landroid/widget/RadioButton;

.field public final rbUserCollect:Landroid/widget/RadioButton;

.field public final rbUserHistory:Landroid/widget/RadioButton;

.field public final rbUserPlaybSetting:Landroid/widget/RadioButton;

.field public final remoteInstallation:Landroid/widget/TextView;

.field public final rgMember:Landroid/widget/RadioGroup;

.field public final rightPanel:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final tvAccount:Landroid/widget/TextView;

.field public final tvNoData:Landroid/widget/TextView;

.field public final tvUserName:Landroid/widget/TextView;

.field public final userTypeDetails:Landroid/widget/LinearLayout;

.field public final userTypeDetailsGrid:Landroid/widget/GridView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroidx/cardview/widget/CardView;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/TextView;Landroid/widget/RadioGroup;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/GridView;)V
    .locals 16
    .param p1, "rootView"    # Landroid/widget/FrameLayout;
    .param p2, "aboutUs"    # Landroid/widget/TextView;
    .param p3, "accountInfo"    # Landroid/widget/LinearLayout;
    .param p4, "activityCenter"    # Landroid/widget/TextView;
    .param p5, "advancedSettings"    # Landroid/widget/LinearLayout;
    .param p6, "backgroundSettings"    # Landroid/widget/LinearLayout;
    .param p7, "btLogin"    # Landroid/widget/Button;
    .param p8, "clearHistory"    # Landroid/widget/LinearLayout;
    .param p9, "filterContainer"    # Landroid/widget/LinearLayout;
    .param p10, "filterContent"    # Landroid/widget/TextView;
    .param p11, "framelayout"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p12, "icon"    # Landroid/widget/ImageView;
    .param p13, "imgIcon"    # Landroid/widget/ImageView;
    .param p14, "imgQrCode"    # Landroid/widget/ImageView;
    .param p15, "infoContainer"    # Landroid/widget/LinearLayout;
    .param p16, "invitationRewards"    # Landroidx/cardview/widget/CardView;
    .param p17, "iv"    # Landroid/widget/ImageView;
    .param p18, "ivMember"    # Landroid/widget/ImageView;
    .param p19, "ivTopBottom"    # Landroid/widget/ImageView;
    .param p20, "ivTopLine"    # Landroid/widget/ImageView;
    .param p21, "jifenData"    # Landroid/widget/TextView;
    .param p22, "leftPanel"    # Landroid/widget/RelativeLayout;
    .param p23, "llMember"    # Landroid/widget/LinearLayout;
    .param p24, "llQrCode"    # Landroid/widget/LinearLayout;
    .param p25, "member"    # Landroid/widget/FrameLayout;
    .param p26, "memberData"    # Landroid/widget/TextView;
    .param p27, "memberSetting"    # Landroid/widget/LinearLayout;
    .param p28, "mineCollect"    # Landroidx/cardview/widget/CardView;
    .param p29, "otherSettings"    # Landroid/widget/TextView;
    .param p30, "playHistory"    # Landroidx/cardview/widget/CardView;
    .param p31, "rbUser"    # Landroid/widget/RadioButton;
    .param p32, "rbUserAlert"    # Landroid/widget/RadioButton;
    .param p33, "rbUserApp"    # Landroid/widget/RadioButton;
    .param p34, "rbUserBackgroundSetting"    # Landroid/widget/RadioButton;
    .param p35, "rbUserCollect"    # Landroid/widget/RadioButton;
    .param p36, "rbUserHistory"    # Landroid/widget/RadioButton;
    .param p37, "rbUserPlaybSetting"    # Landroid/widget/RadioButton;
    .param p38, "remoteInstallation"    # Landroid/widget/TextView;
    .param p39, "rgMember"    # Landroid/widget/RadioGroup;
    .param p40, "rightPanel"    # Landroid/widget/RelativeLayout;
    .param p41, "tvAccount"    # Landroid/widget/TextView;
    .param p42, "tvNoData"    # Landroid/widget/TextView;
    .param p43, "tvUserName"    # Landroid/widget/TextView;
    .param p44, "userTypeDetails"    # Landroid/widget/LinearLayout;
    .param p45, "userTypeDetailsGrid"    # Landroid/widget/GridView;

    .line 182
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 183
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->rootView:Landroid/widget/FrameLayout;

    .line 184
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->aboutUs:Landroid/widget/TextView;

    .line 185
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->accountInfo:Landroid/widget/LinearLayout;

    .line 186
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->activityCenter:Landroid/widget/TextView;

    .line 187
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->advancedSettings:Landroid/widget/LinearLayout;

    .line 188
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->backgroundSettings:Landroid/widget/LinearLayout;

    .line 189
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->btLogin:Landroid/widget/Button;

    .line 190
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->clearHistory:Landroid/widget/LinearLayout;

    .line 191
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->filterContainer:Landroid/widget/LinearLayout;

    .line 192
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->filterContent:Landroid/widget/TextView;

    .line 193
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->framelayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 194
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->icon:Landroid/widget/ImageView;

    .line 195
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->imgIcon:Landroid/widget/ImageView;

    .line 196
    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->imgQrCode:Landroid/widget/ImageView;

    .line 197
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->infoContainer:Landroid/widget/LinearLayout;

    .line 198
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->invitationRewards:Landroidx/cardview/widget/CardView;

    .line 199
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->iv:Landroid/widget/ImageView;

    .line 200
    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->ivMember:Landroid/widget/ImageView;

    .line 201
    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->ivTopBottom:Landroid/widget/ImageView;

    .line 202
    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->ivTopLine:Landroid/widget/ImageView;

    .line 203
    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->jifenData:Landroid/widget/TextView;

    .line 204
    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->leftPanel:Landroid/widget/RelativeLayout;

    .line 205
    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->llMember:Landroid/widget/LinearLayout;

    .line 206
    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->llQrCode:Landroid/widget/LinearLayout;

    .line 207
    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->member:Landroid/widget/FrameLayout;

    .line 208
    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->memberData:Landroid/widget/TextView;

    .line 209
    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->memberSetting:Landroid/widget/LinearLayout;

    .line 210
    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->mineCollect:Landroidx/cardview/widget/CardView;

    .line 211
    move-object/from16 v1, p29

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->otherSettings:Landroid/widget/TextView;

    .line 212
    move-object/from16 v1, p30

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->playHistory:Landroidx/cardview/widget/CardView;

    .line 213
    move-object/from16 v1, p31

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->rbUser:Landroid/widget/RadioButton;

    .line 214
    move-object/from16 v1, p32

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->rbUserAlert:Landroid/widget/RadioButton;

    .line 215
    move-object/from16 v1, p33

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->rbUserApp:Landroid/widget/RadioButton;

    .line 216
    move-object/from16 v1, p34

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->rbUserBackgroundSetting:Landroid/widget/RadioButton;

    .line 217
    move-object/from16 v1, p35

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->rbUserCollect:Landroid/widget/RadioButton;

    .line 218
    move-object/from16 v1, p36

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->rbUserHistory:Landroid/widget/RadioButton;

    .line 219
    move-object/from16 v1, p37

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->rbUserPlaybSetting:Landroid/widget/RadioButton;

    .line 220
    move-object/from16 v1, p38

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->remoteInstallation:Landroid/widget/TextView;

    .line 221
    move-object/from16 v1, p39

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->rgMember:Landroid/widget/RadioGroup;

    .line 222
    move-object/from16 v1, p40

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->rightPanel:Landroid/widget/RelativeLayout;

    .line 223
    move-object/from16 v1, p41

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->tvAccount:Landroid/widget/TextView;

    .line 224
    move-object/from16 v1, p42

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->tvNoData:Landroid/widget/TextView;

    .line 225
    move-object/from16 v1, p43

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->tvUserName:Landroid/widget/TextView;

    .line 226
    move-object/from16 v1, p44

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->userTypeDetails:Landroid/widget/LinearLayout;

    .line 227
    move-object/from16 v1, p45

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->userTypeDetailsGrid:Landroid/widget/GridView;

    .line 228
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;
    .locals 49
    .param p0, "rootView"    # Landroid/view/View;

    .line 257
    move-object/from16 v0, p0

    sget v1, Lcom/shenma/tvlauncher/R$id;->about_us:I

    .line 258
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    .line 259
    .local v5, "aboutUs":Landroid/widget/TextView;
    if-eqz v5, :cond_2a

    .line 263
    sget v1, Lcom/shenma/tvlauncher/R$id;->account_info:I

    .line 264
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/LinearLayout;

    .line 265
    .local v6, "accountInfo":Landroid/widget/LinearLayout;
    if-eqz v6, :cond_29

    .line 269
    sget v1, Lcom/shenma/tvlauncher/R$id;->activity_center:I

    .line 270
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    .line 271
    .local v7, "activityCenter":Landroid/widget/TextView;
    if-eqz v7, :cond_28

    .line 275
    sget v1, Lcom/shenma/tvlauncher/R$id;->advanced_settings:I

    .line 276
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/LinearLayout;

    .line 277
    .local v8, "advancedSettings":Landroid/widget/LinearLayout;
    if-eqz v8, :cond_27

    .line 281
    sget v1, Lcom/shenma/tvlauncher/R$id;->background_settings:I

    .line 282
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout;

    .line 283
    .local v9, "backgroundSettings":Landroid/widget/LinearLayout;
    if-eqz v9, :cond_26

    .line 287
    sget v1, Lcom/shenma/tvlauncher/R$id;->bt_login:I

    .line 288
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/Button;

    .line 289
    .local v10, "btLogin":Landroid/widget/Button;
    if-eqz v10, :cond_25

    .line 293
    sget v1, Lcom/shenma/tvlauncher/R$id;->clear_history:I

    .line 294
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/LinearLayout;

    .line 295
    .local v11, "clearHistory":Landroid/widget/LinearLayout;
    if-eqz v11, :cond_24

    .line 299
    sget v1, Lcom/shenma/tvlauncher/R$id;->filter_container:I

    .line 300
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/LinearLayout;

    .line 301
    .local v12, "filterContainer":Landroid/widget/LinearLayout;
    if-eqz v12, :cond_23

    .line 305
    sget v1, Lcom/shenma/tvlauncher/R$id;->filter_content:I

    .line 306
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    .line 307
    .local v13, "filterContent":Landroid/widget/TextView;
    if-eqz v13, :cond_22

    .line 311
    sget v1, Lcom/shenma/tvlauncher/R$id;->framelayout:I

    .line 312
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 313
    .local v14, "framelayout":Landroidx/constraintlayout/widget/ConstraintLayout;
    if-eqz v14, :cond_21

    .line 317
    sget v1, Lcom/shenma/tvlauncher/R$id;->icon:I

    .line 318
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/ImageView;

    .line 319
    .local v15, "icon":Landroid/widget/ImageView;
    if-eqz v15, :cond_20

    .line 323
    sget v1, Lcom/shenma/tvlauncher/R$id;->img_icon:I

    .line 324
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/ImageView;

    .line 325
    .local v16, "imgIcon":Landroid/widget/ImageView;
    if-eqz v16, :cond_1f

    .line 329
    sget v1, Lcom/shenma/tvlauncher/R$id;->img_qr_code:I

    .line 330
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/ImageView;

    .line 331
    .local v17, "imgQrCode":Landroid/widget/ImageView;
    if-eqz v17, :cond_1e

    .line 335
    sget v1, Lcom/shenma/tvlauncher/R$id;->info_container:I

    .line 336
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/LinearLayout;

    .line 337
    .local v18, "infoContainer":Landroid/widget/LinearLayout;
    if-eqz v18, :cond_1d

    .line 341
    sget v1, Lcom/shenma/tvlauncher/R$id;->invitation_rewards:I

    .line 342
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroidx/cardview/widget/CardView;

    .line 343
    .local v19, "invitationRewards":Landroidx/cardview/widget/CardView;
    if-eqz v19, :cond_1c

    .line 347
    sget v1, Lcom/shenma/tvlauncher/R$id;->iv:I

    .line 348
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/ImageView;

    .line 349
    .local v20, "iv":Landroid/widget/ImageView;
    if-eqz v20, :cond_1b

    .line 353
    sget v1, Lcom/shenma/tvlauncher/R$id;->iv_member:I

    .line 354
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/ImageView;

    .line 355
    .local v21, "ivMember":Landroid/widget/ImageView;
    if-eqz v21, :cond_1a

    .line 359
    sget v1, Lcom/shenma/tvlauncher/R$id;->iv_top_bottom:I

    .line 360
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/ImageView;

    .line 361
    .local v22, "ivTopBottom":Landroid/widget/ImageView;
    if-eqz v22, :cond_19

    .line 365
    sget v1, Lcom/shenma/tvlauncher/R$id;->iv_top_line:I

    .line 366
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroid/widget/ImageView;

    .line 367
    .local v23, "ivTopLine":Landroid/widget/ImageView;
    if-eqz v23, :cond_18

    .line 371
    sget v1, Lcom/shenma/tvlauncher/R$id;->jifen_data:I

    .line 372
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Landroid/widget/TextView;

    .line 373
    .local v24, "jifenData":Landroid/widget/TextView;
    if-eqz v24, :cond_17

    .line 377
    sget v1, Lcom/shenma/tvlauncher/R$id;->left_panel:I

    .line 378
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Landroid/widget/RelativeLayout;

    .line 379
    .local v25, "leftPanel":Landroid/widget/RelativeLayout;
    if-eqz v25, :cond_16

    .line 383
    sget v1, Lcom/shenma/tvlauncher/R$id;->ll_member:I

    .line 384
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Landroid/widget/LinearLayout;

    .line 385
    .local v26, "llMember":Landroid/widget/LinearLayout;
    if-eqz v26, :cond_15

    .line 389
    sget v1, Lcom/shenma/tvlauncher/R$id;->ll_qr_code:I

    .line 390
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Landroid/widget/LinearLayout;

    .line 391
    .local v27, "llQrCode":Landroid/widget/LinearLayout;
    if-eqz v27, :cond_14

    .line 395
    move-object/from16 v28, v0

    check-cast v28, Landroid/widget/FrameLayout;

    .line 397
    .local v28, "member":Landroid/widget/FrameLayout;
    sget v1, Lcom/shenma/tvlauncher/R$id;->member_data:I

    .line 398
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v29, v2

    check-cast v29, Landroid/widget/TextView;

    .line 399
    .local v29, "memberData":Landroid/widget/TextView;
    if-eqz v29, :cond_13

    .line 403
    sget v1, Lcom/shenma/tvlauncher/R$id;->member_setting:I

    .line 404
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v30, v2

    check-cast v30, Landroid/widget/LinearLayout;

    .line 405
    .local v30, "memberSetting":Landroid/widget/LinearLayout;
    if-eqz v30, :cond_12

    .line 409
    sget v1, Lcom/shenma/tvlauncher/R$id;->mine_collect:I

    .line 410
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v31, v2

    check-cast v31, Landroidx/cardview/widget/CardView;

    .line 411
    .local v31, "mineCollect":Landroidx/cardview/widget/CardView;
    if-eqz v31, :cond_11

    .line 415
    sget v1, Lcom/shenma/tvlauncher/R$id;->other_settings:I

    .line 416
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v32, v2

    check-cast v32, Landroid/widget/TextView;

    .line 417
    .local v32, "otherSettings":Landroid/widget/TextView;
    if-eqz v32, :cond_10

    .line 421
    sget v1, Lcom/shenma/tvlauncher/R$id;->play_history:I

    .line 422
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v33, v2

    check-cast v33, Landroidx/cardview/widget/CardView;

    .line 423
    .local v33, "playHistory":Landroidx/cardview/widget/CardView;
    if-eqz v33, :cond_f

    .line 427
    sget v1, Lcom/shenma/tvlauncher/R$id;->rb_user:I

    .line 428
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v34, v2

    check-cast v34, Landroid/widget/RadioButton;

    .line 429
    .local v34, "rbUser":Landroid/widget/RadioButton;
    if-eqz v34, :cond_e

    .line 433
    sget v1, Lcom/shenma/tvlauncher/R$id;->rb_user_alert:I

    .line 434
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v35, v2

    check-cast v35, Landroid/widget/RadioButton;

    .line 435
    .local v35, "rbUserAlert":Landroid/widget/RadioButton;
    if-eqz v35, :cond_d

    .line 439
    sget v1, Lcom/shenma/tvlauncher/R$id;->rb_user_app:I

    .line 440
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v36, v2

    check-cast v36, Landroid/widget/RadioButton;

    .line 441
    .local v36, "rbUserApp":Landroid/widget/RadioButton;
    if-eqz v36, :cond_c

    .line 445
    sget v1, Lcom/shenma/tvlauncher/R$id;->rb_user_background_setting:I

    .line 446
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v37, v2

    check-cast v37, Landroid/widget/RadioButton;

    .line 447
    .local v37, "rbUserBackgroundSetting":Landroid/widget/RadioButton;
    if-eqz v37, :cond_b

    .line 451
    sget v1, Lcom/shenma/tvlauncher/R$id;->rb_user_collect:I

    .line 452
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v38, v2

    check-cast v38, Landroid/widget/RadioButton;

    .line 453
    .local v38, "rbUserCollect":Landroid/widget/RadioButton;
    if-eqz v38, :cond_a

    .line 457
    sget v1, Lcom/shenma/tvlauncher/R$id;->rb_user_history:I

    .line 458
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v39, v2

    check-cast v39, Landroid/widget/RadioButton;

    .line 459
    .local v39, "rbUserHistory":Landroid/widget/RadioButton;
    if-eqz v39, :cond_9

    .line 463
    sget v1, Lcom/shenma/tvlauncher/R$id;->rb_user_playb_setting:I

    .line 464
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v40, v2

    check-cast v40, Landroid/widget/RadioButton;

    .line 465
    .local v40, "rbUserPlaybSetting":Landroid/widget/RadioButton;
    if-eqz v40, :cond_8

    .line 469
    sget v1, Lcom/shenma/tvlauncher/R$id;->remote_installation:I

    .line 470
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v41, v2

    check-cast v41, Landroid/widget/TextView;

    .line 471
    .local v41, "remoteInstallation":Landroid/widget/TextView;
    if-eqz v41, :cond_7

    .line 475
    sget v1, Lcom/shenma/tvlauncher/R$id;->rg_member:I

    .line 476
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v42, v2

    check-cast v42, Landroid/widget/RadioGroup;

    .line 477
    .local v42, "rgMember":Landroid/widget/RadioGroup;
    if-eqz v42, :cond_6

    .line 481
    sget v1, Lcom/shenma/tvlauncher/R$id;->right_panel:I

    .line 482
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v43, v2

    check-cast v43, Landroid/widget/RelativeLayout;

    .line 483
    .local v43, "rightPanel":Landroid/widget/RelativeLayout;
    if-eqz v43, :cond_5

    .line 487
    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_account:I

    .line 488
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v44, v2

    check-cast v44, Landroid/widget/TextView;

    .line 489
    .local v44, "tvAccount":Landroid/widget/TextView;
    if-eqz v44, :cond_4

    .line 493
    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_no_data:I

    .line 494
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v45, v2

    check-cast v45, Landroid/widget/TextView;

    .line 495
    .local v45, "tvNoData":Landroid/widget/TextView;
    if-eqz v45, :cond_3

    .line 499
    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_user_name:I

    .line 500
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v46, v2

    check-cast v46, Landroid/widget/TextView;

    .line 501
    .local v46, "tvUserName":Landroid/widget/TextView;
    if-eqz v46, :cond_2

    .line 505
    sget v1, Lcom/shenma/tvlauncher/R$id;->user_type_details:I

    .line 506
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v47, v2

    check-cast v47, Landroid/widget/LinearLayout;

    .line 507
    .local v47, "userTypeDetails":Landroid/widget/LinearLayout;
    if-eqz v47, :cond_1

    .line 511
    sget v1, Lcom/shenma/tvlauncher/R$id;->user_type_details_grid:I

    .line 512
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v48, v2

    check-cast v48, Landroid/widget/GridView;

    .line 513
    .local v48, "userTypeDetailsGrid":Landroid/widget/GridView;
    if-eqz v48, :cond_0

    .line 517
    new-instance v3, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-direct/range {v3 .. v48}, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroidx/cardview/widget/CardView;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/TextView;Landroid/widget/RadioGroup;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/GridView;)V

    return-object v3

    .line 514
    :cond_0
    goto :goto_0

    .line 508
    .end local v48    # "userTypeDetailsGrid":Landroid/widget/GridView;
    :cond_1
    goto :goto_0

    .line 502
    .end local v47    # "userTypeDetails":Landroid/widget/LinearLayout;
    :cond_2
    goto :goto_0

    .line 496
    .end local v46    # "tvUserName":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 490
    .end local v45    # "tvNoData":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 484
    .end local v44    # "tvAccount":Landroid/widget/TextView;
    :cond_5
    goto :goto_0

    .line 478
    .end local v43    # "rightPanel":Landroid/widget/RelativeLayout;
    :cond_6
    goto :goto_0

    .line 472
    .end local v42    # "rgMember":Landroid/widget/RadioGroup;
    :cond_7
    goto :goto_0

    .line 466
    .end local v41    # "remoteInstallation":Landroid/widget/TextView;
    :cond_8
    goto :goto_0

    .line 460
    .end local v40    # "rbUserPlaybSetting":Landroid/widget/RadioButton;
    :cond_9
    goto :goto_0

    .line 454
    .end local v39    # "rbUserHistory":Landroid/widget/RadioButton;
    :cond_a
    goto :goto_0

    .line 448
    .end local v38    # "rbUserCollect":Landroid/widget/RadioButton;
    :cond_b
    goto :goto_0

    .line 442
    .end local v37    # "rbUserBackgroundSetting":Landroid/widget/RadioButton;
    :cond_c
    goto :goto_0

    .line 436
    .end local v36    # "rbUserApp":Landroid/widget/RadioButton;
    :cond_d
    goto :goto_0

    .line 430
    .end local v35    # "rbUserAlert":Landroid/widget/RadioButton;
    :cond_e
    goto :goto_0

    .line 424
    .end local v34    # "rbUser":Landroid/widget/RadioButton;
    :cond_f
    goto :goto_0

    .line 418
    .end local v33    # "playHistory":Landroidx/cardview/widget/CardView;
    :cond_10
    goto :goto_0

    .line 412
    .end local v32    # "otherSettings":Landroid/widget/TextView;
    :cond_11
    goto :goto_0

    .line 406
    .end local v31    # "mineCollect":Landroidx/cardview/widget/CardView;
    :cond_12
    goto :goto_0

    .line 400
    .end local v30    # "memberSetting":Landroid/widget/LinearLayout;
    :cond_13
    goto :goto_0

    .line 392
    .end local v28    # "member":Landroid/widget/FrameLayout;
    .end local v29    # "memberData":Landroid/widget/TextView;
    :cond_14
    goto :goto_0

    .line 386
    .end local v27    # "llQrCode":Landroid/widget/LinearLayout;
    :cond_15
    goto :goto_0

    .line 380
    .end local v26    # "llMember":Landroid/widget/LinearLayout;
    :cond_16
    goto :goto_0

    .line 374
    .end local v25    # "leftPanel":Landroid/widget/RelativeLayout;
    :cond_17
    goto :goto_0

    .line 368
    .end local v24    # "jifenData":Landroid/widget/TextView;
    :cond_18
    goto :goto_0

    .line 362
    .end local v23    # "ivTopLine":Landroid/widget/ImageView;
    :cond_19
    goto :goto_0

    .line 356
    .end local v22    # "ivTopBottom":Landroid/widget/ImageView;
    :cond_1a
    goto :goto_0

    .line 350
    .end local v21    # "ivMember":Landroid/widget/ImageView;
    :cond_1b
    goto :goto_0

    .line 344
    .end local v20    # "iv":Landroid/widget/ImageView;
    :cond_1c
    goto :goto_0

    .line 338
    .end local v19    # "invitationRewards":Landroidx/cardview/widget/CardView;
    :cond_1d
    goto :goto_0

    .line 332
    .end local v18    # "infoContainer":Landroid/widget/LinearLayout;
    :cond_1e
    goto :goto_0

    .line 326
    .end local v17    # "imgQrCode":Landroid/widget/ImageView;
    :cond_1f
    goto :goto_0

    .line 320
    .end local v16    # "imgIcon":Landroid/widget/ImageView;
    :cond_20
    goto :goto_0

    .line 314
    .end local v15    # "icon":Landroid/widget/ImageView;
    :cond_21
    goto :goto_0

    .line 308
    .end local v14    # "framelayout":Landroidx/constraintlayout/widget/ConstraintLayout;
    :cond_22
    goto :goto_0

    .line 302
    .end local v13    # "filterContent":Landroid/widget/TextView;
    :cond_23
    goto :goto_0

    .line 296
    .end local v12    # "filterContainer":Landroid/widget/LinearLayout;
    :cond_24
    goto :goto_0

    .line 290
    .end local v11    # "clearHistory":Landroid/widget/LinearLayout;
    :cond_25
    goto :goto_0

    .line 284
    .end local v10    # "btLogin":Landroid/widget/Button;
    :cond_26
    goto :goto_0

    .line 278
    .end local v9    # "backgroundSettings":Landroid/widget/LinearLayout;
    :cond_27
    goto :goto_0

    .line 272
    .end local v8    # "advancedSettings":Landroid/widget/LinearLayout;
    :cond_28
    goto :goto_0

    .line 266
    .end local v7    # "activityCenter":Landroid/widget/TextView;
    :cond_29
    goto :goto_0

    .line 260
    .end local v6    # "accountInfo":Landroid/widget/LinearLayout;
    :cond_2a
    nop

    .line 526
    .end local v5    # "aboutUs":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 527
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 238
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 244
    sget v0, Lcom/shenma/tvlauncher/R$layout;->activity_member:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 245
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 246
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 248
    :cond_0
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/ActivityMemberBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
