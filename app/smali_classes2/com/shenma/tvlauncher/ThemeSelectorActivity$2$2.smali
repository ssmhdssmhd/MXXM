.class Lcom/shenma/tvlauncher/ThemeSelectorActivity$2$2;
.super Ljava/lang/Object;
.source "ThemeSelectorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/ThemeSelectorActivity$2;->onItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shenma/tvlauncher/ThemeSelectorActivity$2;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/ThemeSelectorActivity$2;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/shenma/tvlauncher/ThemeSelectorActivity$2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lcom/shenma/tvlauncher/ThemeSelectorActivity$2$2;->this$1:Lcom/shenma/tvlauncher/ThemeSelectorActivity$2;

    iput p2, p0, Lcom/shenma/tvlauncher/ThemeSelectorActivity$2$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 140
    iget-object v0, p0, Lcom/shenma/tvlauncher/ThemeSelectorActivity$2$2;->this$1:Lcom/shenma/tvlauncher/ThemeSelectorActivity$2;

    iget-object v0, v0, Lcom/shenma/tvlauncher/ThemeSelectorActivity$2;->this$0:Lcom/shenma/tvlauncher/ThemeSelectorActivity;

    const-string/jumbo v1, "shenma"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/shenma/tvlauncher/ThemeSelectorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 141
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 142
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Lcom/shenma/tvlauncher/ThemeSelectorActivity$2$2;->this$1:Lcom/shenma/tvlauncher/ThemeSelectorActivity$2;

    iget-object v3, v3, Lcom/shenma/tvlauncher/ThemeSelectorActivity$2;->val$data:Ljava/util/List;

    iget v4, p0, Lcom/shenma/tvlauncher/ThemeSelectorActivity$2$2;->val$position:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/domain/ThemeSelectorGridItem;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/domain/ThemeSelectorGridItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "play_theme"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 143
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 144
    iget-object v3, p0, Lcom/shenma/tvlauncher/ThemeSelectorActivity$2$2;->this$1:Lcom/shenma/tvlauncher/ThemeSelectorActivity$2;

    iget-object v3, v3, Lcom/shenma/tvlauncher/ThemeSelectorActivity$2;->this$0:Lcom/shenma/tvlauncher/ThemeSelectorActivity;

    iget v4, p0, Lcom/shenma/tvlauncher/ThemeSelectorActivity$2$2;->val$position:I

    const-string v5, "Interface_Style"

    invoke-static {v3, v5, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->setSharedIntData(Landroid/content/Context;Ljava/lang/String;I)V

    .line 145
    iget-object v3, p0, Lcom/shenma/tvlauncher/ThemeSelectorActivity$2$2;->this$1:Lcom/shenma/tvlauncher/ThemeSelectorActivity$2;

    iget-object v3, v3, Lcom/shenma/tvlauncher/ThemeSelectorActivity$2;->this$0:Lcom/shenma/tvlauncher/ThemeSelectorActivity;

    iget v4, p0, Lcom/shenma/tvlauncher/ThemeSelectorActivity$2$2;->val$position:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "User_Style"

    invoke-static {v3, v6, v4}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->setSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget v3, p0, Lcom/shenma/tvlauncher/ThemeSelectorActivity$2$2;->val$position:I

    const/4 v4, 0x4

    if-lt v3, v4, :cond_0

    iget v3, p0, Lcom/shenma/tvlauncher/ThemeSelectorActivity$2$2;->val$position:I

    const/4 v4, 0x7

    if-gt v3, v4, :cond_0

    .line 147
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/shenma/tvlauncher/ThemeSelectorActivity$2$2;->this$1:Lcom/shenma/tvlauncher/ThemeSelectorActivity$2;

    iget-object v3, v3, Lcom/shenma/tvlauncher/ThemeSelectorActivity$2;->this$0:Lcom/shenma/tvlauncher/ThemeSelectorActivity;

    const-class v4, Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    .local v2, "intent":Landroid/content/Intent;
    iget v3, p0, Lcom/shenma/tvlauncher/ThemeSelectorActivity$2$2;->val$position:I

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    iget-object v3, p0, Lcom/shenma/tvlauncher/ThemeSelectorActivity$2$2;->this$1:Lcom/shenma/tvlauncher/ThemeSelectorActivity$2;

    iget-object v3, v3, Lcom/shenma/tvlauncher/ThemeSelectorActivity$2;->this$0:Lcom/shenma/tvlauncher/ThemeSelectorActivity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v2}, Lcom/shenma/tvlauncher/ThemeSelectorActivity;->setResult(ILandroid/content/Intent;)V

    .line 150
    iget-object v3, p0, Lcom/shenma/tvlauncher/ThemeSelectorActivity$2$2;->this$1:Lcom/shenma/tvlauncher/ThemeSelectorActivity$2;

    iget-object v3, v3, Lcom/shenma/tvlauncher/ThemeSelectorActivity$2;->this$0:Lcom/shenma/tvlauncher/ThemeSelectorActivity;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/ThemeSelectorActivity;->finish()V

    .line 151
    .end local v2    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 152
    :cond_0
    iget-object v3, p0, Lcom/shenma/tvlauncher/ThemeSelectorActivity$2$2;->this$1:Lcom/shenma/tvlauncher/ThemeSelectorActivity$2;

    iget-object v3, v3, Lcom/shenma/tvlauncher/ThemeSelectorActivity$2;->this$0:Lcom/shenma/tvlauncher/ThemeSelectorActivity;

    iget-object v3, v3, Lcom/shenma/tvlauncher/ThemeSelectorActivity;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/ThemeSelectorActivity$2$2;->this$1:Lcom/shenma/tvlauncher/ThemeSelectorActivity$2;

    iget-object v4, v4, Lcom/shenma/tvlauncher/ThemeSelectorActivity$2;->this$0:Lcom/shenma/tvlauncher/ThemeSelectorActivity;

    iget-object v4, v4, Lcom/shenma/tvlauncher/ThemeSelectorActivity;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 153
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_1

    .line 154
    const v4, 0x14008000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 157
    iget-object v4, p0, Lcom/shenma/tvlauncher/ThemeSelectorActivity$2$2;->this$1:Lcom/shenma/tvlauncher/ThemeSelectorActivity$2;

    iget-object v4, v4, Lcom/shenma/tvlauncher/ThemeSelectorActivity$2;->this$0:Lcom/shenma/tvlauncher/ThemeSelectorActivity;

    iget-object v4, v4, Lcom/shenma/tvlauncher/ThemeSelectorActivity;->context:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 160
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    .line 161
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 164
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_0
    return-void
.end method
