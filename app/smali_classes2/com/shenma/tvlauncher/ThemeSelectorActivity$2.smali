.class Lcom/shenma/tvlauncher/ThemeSelectorActivity$2;
.super Ljava/lang/Object;
.source "ThemeSelectorActivity.java"

# interfaces
.implements Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/ThemeSelectorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/ThemeSelectorActivity;

.field final synthetic val$data:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/ThemeSelectorActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/ThemeSelectorActivity;
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

    .line 129
    iput-object p1, p0, Lcom/shenma/tvlauncher/ThemeSelectorActivity$2;->this$0:Lcom/shenma/tvlauncher/ThemeSelectorActivity;

    iput-object p2, p0, Lcom/shenma/tvlauncher/ThemeSelectorActivity$2;->val$data:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 5
    .param p1, "position"    # I

    .line 132
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    const-string/jumbo v1, "\u8be5\u64cd\u4f5c\u9700\u8981\u91cd\u542f\u5e94\u7528"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "\u8be5\u64cd\u4f5c\u5c06\u76f4\u63a5\u5207\u6362\u4e3b\u9898"

    .line 133
    .local v1, "message":Ljava/lang/String;
    :goto_0
    if-ge p1, v0, :cond_1

    const-string/jumbo v0, "\u91cd\u542fAPP"

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "\u5207\u6362\u4e3b\u9898"

    .line 134
    .local v0, "title":Ljava/lang/String;
    :goto_1
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/shenma/tvlauncher/ThemeSelectorActivity$2;->this$0:Lcom/shenma/tvlauncher/ThemeSelectorActivity;

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 135
    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 136
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/shenma/tvlauncher/ThemeSelectorActivity$2$2;

    invoke-direct {v3, p0, p1}, Lcom/shenma/tvlauncher/ThemeSelectorActivity$2$2;-><init>(Lcom/shenma/tvlauncher/ThemeSelectorActivity$2;I)V

    .line 137
    const-string/jumbo v4, "\u786e\u8ba4"

    invoke-virtual {v2, v4, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/shenma/tvlauncher/ThemeSelectorActivity$2$1;

    invoke-direct {v3, p0}, Lcom/shenma/tvlauncher/ThemeSelectorActivity$2$1;-><init>(Lcom/shenma/tvlauncher/ThemeSelectorActivity$2;)V

    .line 166
    const-string/jumbo v4, "\u53d6\u6d88"

    invoke-virtual {v2, v4, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 172
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 173
    return-void
.end method
