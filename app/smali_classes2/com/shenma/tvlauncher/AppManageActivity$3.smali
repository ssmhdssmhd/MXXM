.class Lcom/shenma/tvlauncher/AppManageActivity$3;
.super Ljava/lang/Object;
.source "AppManageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/AppManageActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/AppManageActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/AppManageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/AppManageActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 140
    iput-object p1, p0, Lcom/shenma/tvlauncher/AppManageActivity$3;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity$3;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/AppManageActivity;->-$$Nest$mqueryAllAppInstalled(Lcom/shenma/tvlauncher/AppManageActivity;)V

    .line 145
    iget-object v0, p0, Lcom/shenma/tvlauncher/AppManageActivity$3;->this$0:Lcom/shenma/tvlauncher/AppManageActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/AppManageActivity;->-$$Nest$mqueryAllSystemApp(Lcom/shenma/tvlauncher/AppManageActivity;)V

    .line 146
    return-void
.end method
