.class Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$13$1;
.super Ljava/lang/Object;
.source "Home2RecommendThemeSevenFragment.java"

# interfaces
.implements Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$RecommentAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$13;->onResponse(Lcom/shenma/tvlauncher/domain/Recommend;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$13;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$13;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$13;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 434
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$13$1;->this$1:Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/shenma/tvlauncher/domain/RecommendInfo;)V
    .locals 4
    .param p1, "item"    # Lcom/shenma/tvlauncher/domain/RecommendInfo;

    .line 437
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$13$1;->this$1:Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$13;

    iget-object v0, v0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$13;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;

    iget-object v0, v0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "userName"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "username":Ljava/lang/String;
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$13$1;->this$1:Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$13;

    iget-object v3, v3, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$13;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;

    iget-object v3, v3, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 440
    goto :goto_0

    goto :goto_0

    .line 441
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$13$1;->this$1:Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$13;

    iget-object v1, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$13;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;

    invoke-static {v1}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->-$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 442
    return-void

    .line 444
    :goto_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$13$1;->this$1:Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$13;

    iget-object v1, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment$13;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;

    invoke-static {v1, p1}, Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;->-$$Nest$mGetMotion(Lcom/shenma/tvlauncher/fragment/Home2RecommendThemeSevenFragment;Lcom/shenma/tvlauncher/domain/RecommendInfo;)V

    .line 447
    return-void
.end method
