.class Lcom/shenma/tvlauncher/HomeActivity2$21;
.super Ljava/lang/Object;
.source "HomeActivity2.java"

# interfaces
.implements Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$OnZbClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/HomeActivity2;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/HomeActivity2;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/HomeActivity2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/HomeActivity2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 693
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity2$21;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZbClick()V
    .locals 1

    .line 696
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$21;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v0}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$mshowPasswordDialog(Lcom/shenma/tvlauncher/HomeActivity2;)V

    .line 697
    return-void
.end method
