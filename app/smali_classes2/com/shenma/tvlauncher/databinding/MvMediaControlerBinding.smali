.class public final Lcom/shenma/tvlauncher/databinding/MvMediaControlerBinding;
.super Ljava/lang/Object;
.source "MvMediaControlerBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final danmuSend:Landroid/widget/TextView;

.field public final danmuSetting:Landroid/widget/TextView;

.field public final ibPlayStatus:Landroid/widget/TextView;

.field public final menuParent:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final seekbar:Landroid/widget/SeekBar;

.field public final tvCurrentTime:Landroid/widget/TextView;

.field public final tvDanmuSwitch:Lcom/shenma/tvlauncher/view/CycleTextSwitchView;

.field public final tvMenu:Landroid/widget/TextView;

.field public final tvMvHeadend:Lcom/shenma/tvlauncher/view/CycleTextSwitchView;

.field public final tvMvHeadline:Lcom/shenma/tvlauncher/view/CycleTextSwitchView;

.field public final tvMvProportion:Lcom/shenma/tvlauncher/view/CycleTextSwitchView;

.field public final tvMvSpeed:Lcom/shenma/tvlauncher/view/CycleTextSwitchView;

.field public final tvPlayerKernel:Lcom/shenma/tvlauncher/view/CycleTextSwitchView;

.field public final tvTotalTime:Landroid/widget/TextView;

.field public final tvVideoDecoding:Lcom/shenma/tvlauncher/view/CycleTextSwitchView;

.field public final xuanjiBtn:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/SeekBar;Landroid/widget/TextView;Lcom/shenma/tvlauncher/view/CycleTextSwitchView;Landroid/widget/TextView;Lcom/shenma/tvlauncher/view/CycleTextSwitchView;Lcom/shenma/tvlauncher/view/CycleTextSwitchView;Lcom/shenma/tvlauncher/view/CycleTextSwitchView;Lcom/shenma/tvlauncher/view/CycleTextSwitchView;Lcom/shenma/tvlauncher/view/CycleTextSwitchView;Landroid/widget/TextView;Lcom/shenma/tvlauncher/view/CycleTextSwitchView;Landroid/widget/TextView;)V
    .locals 16
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "danmuSend"    # Landroid/widget/TextView;
    .param p3, "danmuSetting"    # Landroid/widget/TextView;
    .param p4, "ibPlayStatus"    # Landroid/widget/TextView;
    .param p5, "menuParent"    # Landroid/widget/LinearLayout;
    .param p6, "seekbar"    # Landroid/widget/SeekBar;
    .param p7, "tvCurrentTime"    # Landroid/widget/TextView;
    .param p8, "tvDanmuSwitch"    # Lcom/shenma/tvlauncher/view/CycleTextSwitchView;
    .param p9, "tvMenu"    # Landroid/widget/TextView;
    .param p10, "tvMvHeadend"    # Lcom/shenma/tvlauncher/view/CycleTextSwitchView;
    .param p11, "tvMvHeadline"    # Lcom/shenma/tvlauncher/view/CycleTextSwitchView;
    .param p12, "tvMvProportion"    # Lcom/shenma/tvlauncher/view/CycleTextSwitchView;
    .param p13, "tvMvSpeed"    # Lcom/shenma/tvlauncher/view/CycleTextSwitchView;
    .param p14, "tvPlayerKernel"    # Lcom/shenma/tvlauncher/view/CycleTextSwitchView;
    .param p15, "tvTotalTime"    # Landroid/widget/TextView;
    .param p16, "tvVideoDecoding"    # Lcom/shenma/tvlauncher/view/CycleTextSwitchView;
    .param p17, "xuanjiBtn"    # Landroid/widget/TextView;

    .line 79
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 80
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/MvMediaControlerBinding;->rootView:Landroid/widget/LinearLayout;

    .line 81
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/shenma/tvlauncher/databinding/MvMediaControlerBinding;->danmuSend:Landroid/widget/TextView;

    .line 82
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/shenma/tvlauncher/databinding/MvMediaControlerBinding;->danmuSetting:Landroid/widget/TextView;

    .line 83
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/shenma/tvlauncher/databinding/MvMediaControlerBinding;->ibPlayStatus:Landroid/widget/TextView;

    .line 84
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/shenma/tvlauncher/databinding/MvMediaControlerBinding;->menuParent:Landroid/widget/LinearLayout;

    .line 85
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/shenma/tvlauncher/databinding/MvMediaControlerBinding;->seekbar:Landroid/widget/SeekBar;

    .line 86
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/shenma/tvlauncher/databinding/MvMediaControlerBinding;->tvCurrentTime:Landroid/widget/TextView;

    .line 87
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/shenma/tvlauncher/databinding/MvMediaControlerBinding;->tvDanmuSwitch:Lcom/shenma/tvlauncher/view/CycleTextSwitchView;

    .line 88
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/shenma/tvlauncher/databinding/MvMediaControlerBinding;->tvMenu:Landroid/widget/TextView;

    .line 89
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/shenma/tvlauncher/databinding/MvMediaControlerBinding;->tvMvHeadend:Lcom/shenma/tvlauncher/view/CycleTextSwitchView;

    .line 90
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/shenma/tvlauncher/databinding/MvMediaControlerBinding;->tvMvHeadline:Lcom/shenma/tvlauncher/view/CycleTextSwitchView;

    .line 91
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/shenma/tvlauncher/databinding/MvMediaControlerBinding;->tvMvProportion:Lcom/shenma/tvlauncher/view/CycleTextSwitchView;

    .line 92
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/shenma/tvlauncher/databinding/MvMediaControlerBinding;->tvMvSpeed:Lcom/shenma/tvlauncher/view/CycleTextSwitchView;

    .line 93
    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/shenma/tvlauncher/databinding/MvMediaControlerBinding;->tvPlayerKernel:Lcom/shenma/tvlauncher/view/CycleTextSwitchView;

    .line 94
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/shenma/tvlauncher/databinding/MvMediaControlerBinding;->tvTotalTime:Landroid/widget/TextView;

    .line 95
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/MvMediaControlerBinding;->tvVideoDecoding:Lcom/shenma/tvlauncher/view/CycleTextSwitchView;

    .line 96
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/shenma/tvlauncher/databinding/MvMediaControlerBinding;->xuanjiBtn:Landroid/widget/TextView;

    .line 97
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/MvMediaControlerBinding;
    .locals 21
    .param p0, "rootView"    # Landroid/view/View;

    .line 126
    move-object/from16 v0, p0

    sget v1, Lcom/shenma/tvlauncher/R$id;->danmu_send:I

    .line 127
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    .line 128
    .local v5, "danmuSend":Landroid/widget/TextView;
    if-eqz v5, :cond_f

    .line 132
    sget v1, Lcom/shenma/tvlauncher/R$id;->danmu_setting:I

    .line 133
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    .line 134
    .local v6, "danmuSetting":Landroid/widget/TextView;
    if-eqz v6, :cond_e

    .line 138
    sget v1, Lcom/shenma/tvlauncher/R$id;->ib_playStatus:I

    .line 139
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    .line 140
    .local v7, "ibPlayStatus":Landroid/widget/TextView;
    if-eqz v7, :cond_d

    .line 144
    sget v1, Lcom/shenma/tvlauncher/R$id;->menu_parent:I

    .line 145
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/LinearLayout;

    .line 146
    .local v8, "menuParent":Landroid/widget/LinearLayout;
    if-eqz v8, :cond_c

    .line 150
    sget v1, Lcom/shenma/tvlauncher/R$id;->seekbar:I

    .line 151
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/SeekBar;

    .line 152
    .local v9, "seekbar":Landroid/widget/SeekBar;
    if-eqz v9, :cond_b

    .line 156
    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_currentTime:I

    .line 157
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    .line 158
    .local v10, "tvCurrentTime":Landroid/widget/TextView;
    if-eqz v10, :cond_a

    .line 162
    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_danmu_switch:I

    .line 163
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;

    .line 164
    .local v11, "tvDanmuSwitch":Lcom/shenma/tvlauncher/view/CycleTextSwitchView;
    if-eqz v11, :cond_9

    .line 168
    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_menu:I

    .line 169
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    .line 170
    .local v12, "tvMenu":Landroid/widget/TextView;
    if-eqz v12, :cond_8

    .line 174
    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_mv_headend:I

    .line 175
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;

    .line 176
    .local v13, "tvMvHeadend":Lcom/shenma/tvlauncher/view/CycleTextSwitchView;
    if-eqz v13, :cond_7

    .line 180
    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_mv_headline:I

    .line 181
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;

    .line 182
    .local v14, "tvMvHeadline":Lcom/shenma/tvlauncher/view/CycleTextSwitchView;
    if-eqz v14, :cond_6

    .line 186
    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_mv_proportion:I

    .line 187
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;

    .line 188
    .local v15, "tvMvProportion":Lcom/shenma/tvlauncher/view/CycleTextSwitchView;
    if-eqz v15, :cond_5

    .line 192
    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_mv_speed:I

    .line 193
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;

    .line 194
    .local v16, "tvMvSpeed":Lcom/shenma/tvlauncher/view/CycleTextSwitchView;
    if-eqz v16, :cond_4

    .line 198
    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_player_kernel:I

    .line 199
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;

    .line 200
    .local v17, "tvPlayerKernel":Lcom/shenma/tvlauncher/view/CycleTextSwitchView;
    if-eqz v17, :cond_3

    .line 204
    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_totalTime:I

    .line 205
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    .line 206
    .local v18, "tvTotalTime":Landroid/widget/TextView;
    if-eqz v18, :cond_2

    .line 210
    sget v1, Lcom/shenma/tvlauncher/R$id;->tv_video_decoding:I

    .line 211
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lcom/shenma/tvlauncher/view/CycleTextSwitchView;

    .line 212
    .local v19, "tvVideoDecoding":Lcom/shenma/tvlauncher/view/CycleTextSwitchView;
    if-eqz v19, :cond_1

    .line 216
    sget v1, Lcom/shenma/tvlauncher/R$id;->xuanji_btn:I

    .line 217
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    .line 218
    .local v20, "xuanjiBtn":Landroid/widget/TextView;
    if-eqz v20, :cond_0

    .line 222
    new-instance v3, Lcom/shenma/tvlauncher/databinding/MvMediaControlerBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-direct/range {v3 .. v20}, Lcom/shenma/tvlauncher/databinding/MvMediaControlerBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/SeekBar;Landroid/widget/TextView;Lcom/shenma/tvlauncher/view/CycleTextSwitchView;Landroid/widget/TextView;Lcom/shenma/tvlauncher/view/CycleTextSwitchView;Lcom/shenma/tvlauncher/view/CycleTextSwitchView;Lcom/shenma/tvlauncher/view/CycleTextSwitchView;Lcom/shenma/tvlauncher/view/CycleTextSwitchView;Lcom/shenma/tvlauncher/view/CycleTextSwitchView;Landroid/widget/TextView;Lcom/shenma/tvlauncher/view/CycleTextSwitchView;Landroid/widget/TextView;)V

    return-object v3

    .line 219
    :cond_0
    goto :goto_0

    .line 213
    .end local v20    # "xuanjiBtn":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 207
    .end local v19    # "tvVideoDecoding":Lcom/shenma/tvlauncher/view/CycleTextSwitchView;
    :cond_2
    goto :goto_0

    .line 201
    .end local v18    # "tvTotalTime":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 195
    .end local v17    # "tvPlayerKernel":Lcom/shenma/tvlauncher/view/CycleTextSwitchView;
    :cond_4
    goto :goto_0

    .line 189
    .end local v16    # "tvMvSpeed":Lcom/shenma/tvlauncher/view/CycleTextSwitchView;
    :cond_5
    goto :goto_0

    .line 183
    .end local v15    # "tvMvProportion":Lcom/shenma/tvlauncher/view/CycleTextSwitchView;
    :cond_6
    goto :goto_0

    .line 177
    .end local v14    # "tvMvHeadline":Lcom/shenma/tvlauncher/view/CycleTextSwitchView;
    :cond_7
    goto :goto_0

    .line 171
    .end local v13    # "tvMvHeadend":Lcom/shenma/tvlauncher/view/CycleTextSwitchView;
    :cond_8
    goto :goto_0

    .line 165
    .end local v12    # "tvMenu":Landroid/widget/TextView;
    :cond_9
    goto :goto_0

    .line 159
    .end local v11    # "tvDanmuSwitch":Lcom/shenma/tvlauncher/view/CycleTextSwitchView;
    :cond_a
    goto :goto_0

    .line 153
    .end local v10    # "tvCurrentTime":Landroid/widget/TextView;
    :cond_b
    goto :goto_0

    .line 147
    .end local v9    # "seekbar":Landroid/widget/SeekBar;
    :cond_c
    goto :goto_0

    .line 141
    .end local v8    # "menuParent":Landroid/widget/LinearLayout;
    :cond_d
    goto :goto_0

    .line 135
    .end local v7    # "ibPlayStatus":Landroid/widget/TextView;
    :cond_e
    goto :goto_0

    .line 129
    .end local v6    # "danmuSetting":Landroid/widget/TextView;
    :cond_f
    nop

    .line 227
    .end local v5    # "danmuSend":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/MvMediaControlerBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 107
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/MvMediaControlerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/MvMediaControlerBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/MvMediaControlerBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 113
    sget v0, Lcom/shenma/tvlauncher/R$layout;->mv_media_controler:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 114
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 115
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 117
    :cond_0
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/MvMediaControlerBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/MvMediaControlerBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/MvMediaControlerBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/MvMediaControlerBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
