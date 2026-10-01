.class Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter$2;
.super Ljava/lang/Object;
.source "HomeActivity2.java"

# interfaces
.implements Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$OnZbClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;->createFragments()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1843
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter$2;->this$1:Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZbClick()V
    .locals 1

    .line 1846
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter$2;->this$1:Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;

    iget-object v0, v0, Lcom/shenma/tvlauncher/HomeActivity2$MyPagerAdapter;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v0}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$mshowPasswordDialog(Lcom/shenma/tvlauncher/HomeActivity2;)V

    .line 1847
    return-void
.end method
