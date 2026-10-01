.class Lcom/shenma/tvlauncher/HomeActivity$56;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/HomeActivity;->queryInstalledApp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/HomeActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/HomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/HomeActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2338
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity$56;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2341
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity$56;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/HomeActivity$56;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/HomeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/shenma/tvlauncher/HomeActivity;->packLst:Ljava/util/List;

    .line 2342
    return-void
.end method
