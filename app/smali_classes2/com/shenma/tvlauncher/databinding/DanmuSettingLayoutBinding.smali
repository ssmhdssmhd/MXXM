.class public final Lcom/shenma/tvlauncher/databinding/DanmuSettingLayoutBinding;
.super Ljava/lang/Object;
.source "DanmuSettingLayoutBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final coloredBarrageSwitch:Landroid/widget/Switch;

.field public final danmuVelocitySeekbar:Lcom/view/FlexibleStepSeekBar;

.field public final danmuVelocitySeekbarValue:Landroid/widget/TextView;

.field public final linesSeekbar:Lcom/view/FlexibleStepSeekBar;

.field public final linesSeekbarValue:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final textsizeSeekbar:Lcom/view/FlexibleStepSeekBar;

.field public final textsizeSeekbarValue:Landroid/widget/TextView;

.field public final transparencySeekbar:Lcom/view/FlexibleStepSeekBar;

.field public final transparencySeekbarValue:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/Switch;Lcom/view/FlexibleStepSeekBar;Landroid/widget/TextView;Lcom/view/FlexibleStepSeekBar;Landroid/widget/TextView;Lcom/view/FlexibleStepSeekBar;Landroid/widget/TextView;Lcom/view/FlexibleStepSeekBar;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "coloredBarrageSwitch"    # Landroid/widget/Switch;
    .param p3, "danmuVelocitySeekbar"    # Lcom/view/FlexibleStepSeekBar;
    .param p4, "danmuVelocitySeekbarValue"    # Landroid/widget/TextView;
    .param p5, "linesSeekbar"    # Lcom/view/FlexibleStepSeekBar;
    .param p6, "linesSeekbarValue"    # Landroid/widget/TextView;
    .param p7, "textsizeSeekbar"    # Lcom/view/FlexibleStepSeekBar;
    .param p8, "textsizeSeekbarValue"    # Landroid/widget/TextView;
    .param p9, "transparencySeekbar"    # Lcom/view/FlexibleStepSeekBar;
    .param p10, "transparencySeekbarValue"    # Landroid/widget/TextView;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/shenma/tvlauncher/databinding/DanmuSettingLayoutBinding;->rootView:Landroid/widget/LinearLayout;

    .line 58
    iput-object p2, p0, Lcom/shenma/tvlauncher/databinding/DanmuSettingLayoutBinding;->coloredBarrageSwitch:Landroid/widget/Switch;

    .line 59
    iput-object p3, p0, Lcom/shenma/tvlauncher/databinding/DanmuSettingLayoutBinding;->danmuVelocitySeekbar:Lcom/view/FlexibleStepSeekBar;

    .line 60
    iput-object p4, p0, Lcom/shenma/tvlauncher/databinding/DanmuSettingLayoutBinding;->danmuVelocitySeekbarValue:Landroid/widget/TextView;

    .line 61
    iput-object p5, p0, Lcom/shenma/tvlauncher/databinding/DanmuSettingLayoutBinding;->linesSeekbar:Lcom/view/FlexibleStepSeekBar;

    .line 62
    iput-object p6, p0, Lcom/shenma/tvlauncher/databinding/DanmuSettingLayoutBinding;->linesSeekbarValue:Landroid/widget/TextView;

    .line 63
    iput-object p7, p0, Lcom/shenma/tvlauncher/databinding/DanmuSettingLayoutBinding;->textsizeSeekbar:Lcom/view/FlexibleStepSeekBar;

    .line 64
    iput-object p8, p0, Lcom/shenma/tvlauncher/databinding/DanmuSettingLayoutBinding;->textsizeSeekbarValue:Landroid/widget/TextView;

    .line 65
    iput-object p9, p0, Lcom/shenma/tvlauncher/databinding/DanmuSettingLayoutBinding;->transparencySeekbar:Lcom/view/FlexibleStepSeekBar;

    .line 66
    iput-object p10, p0, Lcom/shenma/tvlauncher/databinding/DanmuSettingLayoutBinding;->transparencySeekbarValue:Landroid/widget/TextView;

    .line 67
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/DanmuSettingLayoutBinding;
    .locals 13
    .param p0, "rootView"    # Landroid/view/View;

    .line 96
    sget v0, Lcom/shenma/tvlauncher/R$id;->colored_barrage_switch:I

    .line 97
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Switch;

    .line 98
    .local v4, "coloredBarrageSwitch":Landroid/widget/Switch;
    if-eqz v4, :cond_8

    .line 102
    sget v0, Lcom/shenma/tvlauncher/R$id;->danmu_velocity_seekbar:I

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/view/FlexibleStepSeekBar;

    .line 104
    .local v5, "danmuVelocitySeekbar":Lcom/view/FlexibleStepSeekBar;
    if-eqz v5, :cond_7

    .line 108
    sget v0, Lcom/shenma/tvlauncher/R$id;->danmu_velocity_seekbar_value:I

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    .line 110
    .local v6, "danmuVelocitySeekbarValue":Landroid/widget/TextView;
    if-eqz v6, :cond_6

    .line 114
    sget v0, Lcom/shenma/tvlauncher/R$id;->lines_seekbar:I

    .line 115
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/view/FlexibleStepSeekBar;

    .line 116
    .local v7, "linesSeekbar":Lcom/view/FlexibleStepSeekBar;
    if-eqz v7, :cond_5

    .line 120
    sget v0, Lcom/shenma/tvlauncher/R$id;->lines_seekbar_value:I

    .line 121
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    .line 122
    .local v8, "linesSeekbarValue":Landroid/widget/TextView;
    if-eqz v8, :cond_4

    .line 126
    sget v0, Lcom/shenma/tvlauncher/R$id;->textsize_seekbar:I

    .line 127
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/view/FlexibleStepSeekBar;

    .line 128
    .local v9, "textsizeSeekbar":Lcom/view/FlexibleStepSeekBar;
    if-eqz v9, :cond_3

    .line 132
    sget v0, Lcom/shenma/tvlauncher/R$id;->textsize_seekbar_value:I

    .line 133
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    .line 134
    .local v10, "textsizeSeekbarValue":Landroid/widget/TextView;
    if-eqz v10, :cond_2

    .line 138
    sget v0, Lcom/shenma/tvlauncher/R$id;->transparency_seekbar:I

    .line 139
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/view/FlexibleStepSeekBar;

    .line 140
    .local v11, "transparencySeekbar":Lcom/view/FlexibleStepSeekBar;
    if-eqz v11, :cond_1

    .line 144
    sget v0, Lcom/shenma/tvlauncher/R$id;->transparency_seekbar_value:I

    .line 145
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    .line 146
    .local v12, "transparencySeekbarValue":Landroid/widget/TextView;
    if-eqz v12, :cond_0

    .line 150
    new-instance v2, Lcom/shenma/tvlauncher/databinding/DanmuSettingLayoutBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct/range {v2 .. v12}, Lcom/shenma/tvlauncher/databinding/DanmuSettingLayoutBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Switch;Lcom/view/FlexibleStepSeekBar;Landroid/widget/TextView;Lcom/view/FlexibleStepSeekBar;Landroid/widget/TextView;Lcom/view/FlexibleStepSeekBar;Landroid/widget/TextView;Lcom/view/FlexibleStepSeekBar;Landroid/widget/TextView;)V

    return-object v2

    .line 147
    :cond_0
    goto :goto_0

    .line 141
    .end local v12    # "transparencySeekbarValue":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 135
    .end local v11    # "transparencySeekbar":Lcom/view/FlexibleStepSeekBar;
    :cond_2
    goto :goto_0

    .line 129
    .end local v10    # "textsizeSeekbarValue":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 123
    .end local v9    # "textsizeSeekbar":Lcom/view/FlexibleStepSeekBar;
    :cond_4
    goto :goto_0

    .line 117
    .end local v8    # "linesSeekbarValue":Landroid/widget/TextView;
    :cond_5
    goto :goto_0

    .line 111
    .end local v7    # "linesSeekbar":Lcom/view/FlexibleStepSeekBar;
    :cond_6
    goto :goto_0

    .line 105
    .end local v6    # "danmuVelocitySeekbarValue":Landroid/widget/TextView;
    :cond_7
    goto :goto_0

    .line 99
    .end local v5    # "danmuVelocitySeekbar":Lcom/view/FlexibleStepSeekBar;
    :cond_8
    nop

    .line 154
    .end local v4    # "coloredBarrageSwitch":Landroid/widget/Switch;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/shenma/tvlauncher/databinding/DanmuSettingLayoutBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 77
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/databinding/DanmuSettingLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/DanmuSettingLayoutBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/shenma/tvlauncher/databinding/DanmuSettingLayoutBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 83
    sget v0, Lcom/shenma/tvlauncher/R$layout;->danmu_setting_layout:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 85
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 87
    :cond_0
    invoke-static {v0}, Lcom/shenma/tvlauncher/databinding/DanmuSettingLayoutBinding;->bind(Landroid/view/View;)Lcom/shenma/tvlauncher/databinding/DanmuSettingLayoutBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/databinding/DanmuSettingLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/shenma/tvlauncher/databinding/DanmuSettingLayoutBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
