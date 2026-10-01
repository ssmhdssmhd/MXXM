.class public Lcom/shenma/tvlauncher/SettingRemoteActivity;
.super Lcom/shenma/tvlauncher/BaseActivity;
.source "SettingRemoteActivity.java"


# instance fields
.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private port:I

.field private remote_installation_content_url_tv:Landroid/widget/TextView;

.field private server:Lcom/shenma/tvlauncher/utils/RemoteServer;


# direct methods
.method static bridge synthetic -$$Nest$fgetserver(Lcom/shenma/tvlauncher/SettingRemoteActivity;)Lcom/shenma/tvlauncher/utils/RemoteServer;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/SettingRemoteActivity;->server:Lcom/shenma/tvlauncher/utils/RemoteServer;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/shenma/tvlauncher/BaseActivity;-><init>()V

    .line 20
    const/16 v0, 0x2775

    iput v0, p0, Lcom/shenma/tvlauncher/SettingRemoteActivity;->port:I

    .line 22
    new-instance v0, Lcom/shenma/tvlauncher/SettingRemoteActivity$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/SettingRemoteActivity$1;-><init>(Lcom/shenma/tvlauncher/SettingRemoteActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingRemoteActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private initData()V
    .locals 5

    .line 73
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/SettingRemoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$string;->remote_installation_help_info:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "str":Ljava/lang/String;
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->localIPv4get()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "ip":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\thttp://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/shenma/tvlauncher/SettingRemoteActivity;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "helpInfo":Ljava/lang/String;
    iget-object v3, p0, Lcom/shenma/tvlauncher/SettingRemoteActivity;->remote_installation_content_url_tv:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    new-instance v3, Lcom/shenma/tvlauncher/utils/RemoteServer;

    iget-object v4, p0, Lcom/shenma/tvlauncher/SettingRemoteActivity;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/shenma/tvlauncher/utils/RemoteServer;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/shenma/tvlauncher/SettingRemoteActivity;->server:Lcom/shenma/tvlauncher/utils/RemoteServer;

    .line 80
    return-void
.end method

.method private registerPackageReceiver()V
    .locals 2

    .line 44
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 45
    .local v0, "mFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/shenma/tvlauncher/SettingRemoteActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/shenma/tvlauncher/SettingRemoteActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 48
    return-void
.end method


# virtual methods
.method protected findViewById()V
    .locals 1

    .line 89
    sget v0, Lcom/shenma/tvlauncher/R$id;->remote_installation_content_url_tv:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingRemoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/SettingRemoteActivity;->remote_installation_content_url_tv:Landroid/widget/TextView;

    .line 90
    return-void
.end method

.method protected initView()V
    .locals 0

    .line 68
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/SettingRemoteActivity;->findViewById()V

    .line 69
    invoke-direct {p0}, Lcom/shenma/tvlauncher/SettingRemoteActivity;->initData()V

    .line 70
    return-void
.end method

.method protected loadViewLayout()V
    .locals 0

    .line 85
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 36
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    sget v0, Lcom/shenma/tvlauncher/R$layout;->layout_setting_remote:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingRemoteActivity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/SettingRemoteActivity;->initView()V

    .line 40
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 52
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onStart()V

    .line 53
    const-string/jumbo v0, "zhouchuan"

    const-string/jumbo v1, "\u6253\u5f00httpserver\u670d\u52a1"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingRemoteActivity;->server:Lcom/shenma/tvlauncher/utils/RemoteServer;

    iget v1, p0, Lcom/shenma/tvlauncher/SettingRemoteActivity;->port:I

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/utils/RemoteServer;->start(I)V

    .line 55
    invoke-direct {p0}, Lcom/shenma/tvlauncher/SettingRemoteActivity;->registerPackageReceiver()V

    .line 56
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 60
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onStop()V

    .line 61
    const-string/jumbo v0, "zhouchuan"

    const-string/jumbo v1, "\u5173\u95edhttpserver\u670d\u52a1"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingRemoteActivity;->server:Lcom/shenma/tvlauncher/utils/RemoteServer;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/utils/RemoteServer;->stop()V

    .line 63
    iget-object v0, p0, Lcom/shenma/tvlauncher/SettingRemoteActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/SettingRemoteActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 64
    return-void
.end method

.method protected setListener()V
    .locals 0

    .line 95
    return-void
.end method
