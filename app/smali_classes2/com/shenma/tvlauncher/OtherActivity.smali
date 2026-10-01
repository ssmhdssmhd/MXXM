.class public Lcom/shenma/tvlauncher/OtherActivity;
.super Lcom/shenma/tvlauncher/BaseActivity;
.source "OtherActivity.java"


# instance fields
.field private blur_set:Ljava/lang/String;

.field private other_setting_bgblur_rl:Landroid/widget/RelativeLayout;

.field private other_setting_bgblur_rl_left_arrows:Landroid/widget/ImageButton;

.field private other_setting_bgblur_rl_right_arrows:Landroid/widget/ImageButton;

.field private other_setting_bgblur_rl_text:Landroid/widget/TextView;

.field private other_setting_content_decode:Landroid/widget/RelativeLayout;

.field private other_setting_content_decode_left_arrows:Landroid/widget/ImageButton;

.field private other_setting_content_decode_right_arrows:Landroid/widget/ImageButton;

.field private other_setting_content_decode_text:Landroid/widget/TextView;

.field private other_setting_content_definition:Landroid/widget/RelativeLayout;

.field private other_setting_content_definition_left_arrows:Landroid/widget/ImageButton;

.field private other_setting_content_definition_right_arrows:Landroid/widget/ImageButton;

.field private other_setting_content_definition_text:Landroid/widget/TextView;

.field private other_setting_tvlive_rl:Landroid/widget/RelativeLayout;

.field private strs:[Ljava/lang/String;

.field private tvlive_server:[Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetother_setting_bgblur_rl_left_arrows(Lcom/shenma/tvlauncher/OtherActivity;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/OtherActivity;->other_setting_bgblur_rl_left_arrows:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetother_setting_bgblur_rl_right_arrows(Lcom/shenma/tvlauncher/OtherActivity;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/OtherActivity;->other_setting_bgblur_rl_right_arrows:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetother_setting_bgblur_rl_text(Lcom/shenma/tvlauncher/OtherActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/OtherActivity;->other_setting_bgblur_rl_text:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetother_setting_content_decode_left_arrows(Lcom/shenma/tvlauncher/OtherActivity;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/OtherActivity;->other_setting_content_decode_left_arrows:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetother_setting_content_decode_right_arrows(Lcom/shenma/tvlauncher/OtherActivity;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/OtherActivity;->other_setting_content_decode_right_arrows:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetother_setting_content_decode_text(Lcom/shenma/tvlauncher/OtherActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/OtherActivity;->other_setting_content_decode_text:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetother_setting_content_definition_left_arrows(Lcom/shenma/tvlauncher/OtherActivity;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/OtherActivity;->other_setting_content_definition_left_arrows:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetother_setting_content_definition_right_arrows(Lcom/shenma/tvlauncher/OtherActivity;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/OtherActivity;->other_setting_content_definition_right_arrows:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetother_setting_content_definition_text(Lcom/shenma/tvlauncher/OtherActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/OtherActivity;->other_setting_content_definition_text:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstrs(Lcom/shenma/tvlauncher/OtherActivity;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/OtherActivity;->strs:[Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/shenma/tvlauncher/BaseActivity;-><init>()V

    return-void
.end method

.method private initData()V
    .locals 5

    .line 46
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/OtherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$array;->setting_turn_off:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/OtherActivity;->strs:[Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/OtherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$array;->setting_tvlive_server:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/OtherActivity;->tvlive_server:[Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/shenma/tvlauncher/OtherActivity;->sp:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/shenma/tvlauncher/OtherActivity;->strs:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v3, "open_ring"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "open_ring":Ljava/lang/String;
    iget-object v1, p0, Lcom/shenma/tvlauncher/OtherActivity;->sp:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/shenma/tvlauncher/OtherActivity;->strs:[Ljava/lang/String;

    aget-object v2, v3, v2

    const-string v3, "open_effciency"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "open_piano":Ljava/lang/String;
    iget-object v2, p0, Lcom/shenma/tvlauncher/OtherActivity;->sp:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/shenma/tvlauncher/OtherActivity;->strs:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const-string v4, "open_blur"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "open_blur":Ljava/lang/String;
    iput-object v2, p0, Lcom/shenma/tvlauncher/OtherActivity;->blur_set:Ljava/lang/String;

    .line 52
    iget-object v3, p0, Lcom/shenma/tvlauncher/OtherActivity;->other_setting_content_decode_text:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v3, p0, Lcom/shenma/tvlauncher/OtherActivity;->other_setting_content_definition_text:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v3, p0, Lcom/shenma/tvlauncher/OtherActivity;->other_setting_bgblur_rl_text:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method

.method private saveInitSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/shenma/tvlauncher/OtherActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 86
    return-void
.end method

.method private savePlaySettingInfo()V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/shenma/tvlauncher/OtherActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 73
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/shenma/tvlauncher/OtherActivity;->other_setting_content_decode_text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "open_ring"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 74
    iget-object v1, p0, Lcom/shenma/tvlauncher/OtherActivity;->other_setting_content_definition_text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "open_effciency"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 75
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 76
    return-void
.end method


# virtual methods
.method protected findViewById()V
    .locals 1

    .line 110
    sget v0, Lcom/shenma/tvlauncher/R$id;->other_setting_content_decode:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/OtherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/OtherActivity;->other_setting_content_decode:Landroid/widget/RelativeLayout;

    .line 111
    sget v0, Lcom/shenma/tvlauncher/R$id;->other_setting_content_definition:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/OtherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/OtherActivity;->other_setting_content_definition:Landroid/widget/RelativeLayout;

    .line 112
    sget v0, Lcom/shenma/tvlauncher/R$id;->other_setting_bgblur_rl:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/OtherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/OtherActivity;->other_setting_bgblur_rl:Landroid/widget/RelativeLayout;

    .line 113
    sget v0, Lcom/shenma/tvlauncher/R$id;->other_setting_content_decode_text:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/OtherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/OtherActivity;->other_setting_content_decode_text:Landroid/widget/TextView;

    .line 114
    sget v0, Lcom/shenma/tvlauncher/R$id;->other_setting_content_definition_text:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/OtherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/OtherActivity;->other_setting_content_definition_text:Landroid/widget/TextView;

    .line 115
    sget v0, Lcom/shenma/tvlauncher/R$id;->other_setting_bgblur_rl_text:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/OtherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/OtherActivity;->other_setting_bgblur_rl_text:Landroid/widget/TextView;

    .line 116
    sget v0, Lcom/shenma/tvlauncher/R$id;->other_setting_content_decode_left_arrows:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/OtherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/OtherActivity;->other_setting_content_decode_left_arrows:Landroid/widget/ImageButton;

    .line 117
    sget v0, Lcom/shenma/tvlauncher/R$id;->other_setting_content_decode_right_arrows:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/OtherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/OtherActivity;->other_setting_content_decode_right_arrows:Landroid/widget/ImageButton;

    .line 118
    sget v0, Lcom/shenma/tvlauncher/R$id;->other_setting_content_definition_left_arrows:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/OtherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/OtherActivity;->other_setting_content_definition_left_arrows:Landroid/widget/ImageButton;

    .line 119
    sget v0, Lcom/shenma/tvlauncher/R$id;->other_setting_content_definition_right_arrows:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/OtherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/OtherActivity;->other_setting_content_definition_right_arrows:Landroid/widget/ImageButton;

    .line 120
    sget v0, Lcom/shenma/tvlauncher/R$id;->other_setting_bgblur_rl_left_arrows:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/OtherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/OtherActivity;->other_setting_bgblur_rl_left_arrows:Landroid/widget/ImageButton;

    .line 121
    sget v0, Lcom/shenma/tvlauncher/R$id;->other_setting_bgblur_rl_right_arrows:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/OtherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/shenma/tvlauncher/OtherActivity;->other_setting_bgblur_rl_right_arrows:Landroid/widget/ImageButton;

    .line 122
    return-void
.end method

.method protected initView()V
    .locals 0

    .line 102
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/OtherActivity;->findViewById()V

    .line 103
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/OtherActivity;->setListener()V

    .line 104
    return-void
.end method

.method protected loadViewLayout()V
    .locals 0

    .line 107
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 38
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    sget v0, Lcom/shenma/tvlauncher/R$layout;->layout_setting_other:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/OtherActivity;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/OtherActivity;->initView()V

    .line 42
    invoke-direct {p0}, Lcom/shenma/tvlauncher/OtherActivity;->initData()V

    .line 43
    return-void
.end method

.method protected onDestroy()V
    .locals 5

    .line 89
    iget-object v0, p0, Lcom/shenma/tvlauncher/OtherActivity;->other_setting_bgblur_rl_text:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "open_blur":Ljava/lang/String;
    iget-object v1, p0, Lcom/shenma/tvlauncher/OtherActivity;->blur_set:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    const-string v1, "open_blur"

    invoke-direct {p0, v1, v0}, Lcom/shenma/tvlauncher/OtherActivity;->saveInitSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string/jumbo v1, "zhouchuan"

    invoke-static {v1, v0}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 94
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v2, "com.hd.changewallpaper"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    iget-object v2, p0, Lcom/shenma/tvlauncher/OtherActivity;->sp:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    const-string/jumbo v4, "wallpaperFileName"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/OtherActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 98
    .end local v1    # "mIntent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onDestroy()V

    .line 99
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 58
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/shenma/tvlauncher/OtherActivity;->savePlaySettingInfo()V

    .line 60
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/OtherActivity;->finish()V

    .line 61
    return v1

    .line 63
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/shenma/tvlauncher/BaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method protected setListener()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/shenma/tvlauncher/OtherActivity;->other_setting_content_decode_left_arrows:Landroid/widget/ImageButton;

    new-instance v1, Lcom/shenma/tvlauncher/OtherActivity$1;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/OtherActivity$1;-><init>(Lcom/shenma/tvlauncher/OtherActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/shenma/tvlauncher/OtherActivity;->other_setting_content_decode_right_arrows:Landroid/widget/ImageButton;

    new-instance v1, Lcom/shenma/tvlauncher/OtherActivity$2;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/OtherActivity$2;-><init>(Lcom/shenma/tvlauncher/OtherActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/shenma/tvlauncher/OtherActivity;->other_setting_content_definition_left_arrows:Landroid/widget/ImageButton;

    new-instance v1, Lcom/shenma/tvlauncher/OtherActivity$3;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/OtherActivity$3;-><init>(Lcom/shenma/tvlauncher/OtherActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/shenma/tvlauncher/OtherActivity;->other_setting_content_definition_right_arrows:Landroid/widget/ImageButton;

    new-instance v1, Lcom/shenma/tvlauncher/OtherActivity$4;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/OtherActivity$4;-><init>(Lcom/shenma/tvlauncher/OtherActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v0, p0, Lcom/shenma/tvlauncher/OtherActivity;->other_setting_bgblur_rl_left_arrows:Landroid/widget/ImageButton;

    new-instance v1, Lcom/shenma/tvlauncher/OtherActivity$5;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/OtherActivity$5;-><init>(Lcom/shenma/tvlauncher/OtherActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v0, p0, Lcom/shenma/tvlauncher/OtherActivity;->other_setting_bgblur_rl_right_arrows:Landroid/widget/ImageButton;

    new-instance v1, Lcom/shenma/tvlauncher/OtherActivity$6;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/OtherActivity$6;-><init>(Lcom/shenma/tvlauncher/OtherActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v0, p0, Lcom/shenma/tvlauncher/OtherActivity;->other_setting_content_decode:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/shenma/tvlauncher/OtherActivity$7;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/OtherActivity$7;-><init>(Lcom/shenma/tvlauncher/OtherActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 282
    iget-object v0, p0, Lcom/shenma/tvlauncher/OtherActivity;->other_setting_content_definition:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/shenma/tvlauncher/OtherActivity$8;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/OtherActivity$8;-><init>(Lcom/shenma/tvlauncher/OtherActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 330
    iget-object v0, p0, Lcom/shenma/tvlauncher/OtherActivity;->other_setting_bgblur_rl:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/shenma/tvlauncher/OtherActivity$9;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/OtherActivity$9;-><init>(Lcom/shenma/tvlauncher/OtherActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 378
    return-void
.end method
