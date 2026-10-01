.class public Lcom/shenma/tvlauncher/ClearActivity;
.super Lcom/shenma/tvlauncher/BaseActivity;
.source "ClearActivity.java"


# instance fields
.field private all_cache_clear_tv:Landroid/widget/TextView;

.field private clear_setting_content_decode:Landroid/widget/RelativeLayout;

.field private clear_setting_content_definition:Landroid/widget/RelativeLayout;

.field private clear_setting_content_jump:Landroid/widget/RelativeLayout;

.field private clear_setting_content_playratio:Landroid/widget/RelativeLayout;

.field private clear_setting_other:Landroid/widget/RelativeLayout;

.field private clear_setting_theme:Landroid/widget/RelativeLayout;

.field private dao:Lcom/shenma/tvlauncher/vod/dao/VodDao;


# direct methods
.method static bridge synthetic -$$Nest$fgetall_cache_clear_tv(Lcom/shenma/tvlauncher/ClearActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/ClearActivity;->all_cache_clear_tv:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdao(Lcom/shenma/tvlauncher/ClearActivity;)Lcom/shenma/tvlauncher/vod/dao/VodDao;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/ClearActivity;->dao:Lcom/shenma/tvlauncher/vod/dao/VodDao;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/shenma/tvlauncher/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected findViewById()V
    .locals 1

    .line 48
    sget v0, Lcom/shenma/tvlauncher/R$id;->clear_setting_content_decode:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/ClearActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/ClearActivity;->clear_setting_content_decode:Landroid/widget/RelativeLayout;

    .line 49
    sget v0, Lcom/shenma/tvlauncher/R$id;->clear_setting_content_definition:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/ClearActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/ClearActivity;->clear_setting_content_definition:Landroid/widget/RelativeLayout;

    .line 50
    sget v0, Lcom/shenma/tvlauncher/R$id;->clear_setting_content_playratio:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/ClearActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/ClearActivity;->clear_setting_content_playratio:Landroid/widget/RelativeLayout;

    .line 51
    sget v0, Lcom/shenma/tvlauncher/R$id;->clear_setting_content_jump:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/ClearActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/ClearActivity;->clear_setting_content_jump:Landroid/widget/RelativeLayout;

    .line 52
    sget v0, Lcom/shenma/tvlauncher/R$id;->clear_setting_other:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/ClearActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/shenma/tvlauncher/ClearActivity;->clear_setting_other:Landroid/widget/RelativeLayout;

    .line 53
    sget v0, Lcom/shenma/tvlauncher/R$id;->all_cache_clear_tv:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/ClearActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/ClearActivity;->all_cache_clear_tv:Landroid/widget/TextView;

    .line 58
    return-void
.end method

.method protected initView()V
    .locals 1

    .line 36
    new-instance v0, Lcom/shenma/tvlauncher/vod/dao/VodDao;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/dao/VodDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/ClearActivity;->dao:Lcom/shenma/tvlauncher/vod/dao/VodDao;

    .line 37
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/ClearActivity;->findViewById()V

    .line 38
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/ClearActivity;->setListener()V

    .line 39
    return-void
.end method

.method protected loadViewLayout()V
    .locals 0

    .line 44
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 28
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    sget v0, Lcom/shenma/tvlauncher/R$layout;->layout_setting_clear:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/ClearActivity;->setContentView(I)V

    .line 31
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/ClearActivity;->initView()V

    .line 32
    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/shenma/tvlauncher/ClearActivity;->clear_setting_content_decode:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/shenma/tvlauncher/ClearActivity$1;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/ClearActivity$1;-><init>(Lcom/shenma/tvlauncher/ClearActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/shenma/tvlauncher/ClearActivity;->clear_setting_content_definition:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/shenma/tvlauncher/ClearActivity$2;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/ClearActivity$2;-><init>(Lcom/shenma/tvlauncher/ClearActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/shenma/tvlauncher/ClearActivity;->clear_setting_content_playratio:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/shenma/tvlauncher/ClearActivity$3;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/ClearActivity$3;-><init>(Lcom/shenma/tvlauncher/ClearActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/shenma/tvlauncher/ClearActivity;->clear_setting_content_jump:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/shenma/tvlauncher/ClearActivity$4;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/ClearActivity$4;-><init>(Lcom/shenma/tvlauncher/ClearActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/shenma/tvlauncher/ClearActivity;->all_cache_clear_tv:Landroid/widget/TextView;

    new-instance v1, Lcom/shenma/tvlauncher/ClearActivity$5;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/ClearActivity$5;-><init>(Lcom/shenma/tvlauncher/ClearActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 100
    iget-object v0, p0, Lcom/shenma/tvlauncher/ClearActivity;->clear_setting_other:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/shenma/tvlauncher/ClearActivity$6;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/ClearActivity$6;-><init>(Lcom/shenma/tvlauncher/ClearActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/shenma/tvlauncher/ClearActivity;->all_cache_clear_tv:Landroid/widget/TextView;

    new-instance v1, Lcom/shenma/tvlauncher/ClearActivity$7;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/ClearActivity$7;-><init>(Lcom/shenma/tvlauncher/ClearActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    return-void
.end method
