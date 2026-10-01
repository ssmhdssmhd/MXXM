.class Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Lcom/shenma/tvlauncher/view/CycleTextSwitchView$OnContentChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->loadViewLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1711
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Lcom/shenma/tvlauncher/view/CycleTextSwitchView;ILjava/lang/String;)V
    .locals 3
    .param p1, "view"    # Lcom/shenma/tvlauncher/view/CycleTextSwitchView;
    .param p2, "positionProportion"    # I
    .param p3, "content"    # Ljava/lang/String;

    .line 1715
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$fgetsp(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 1716
    sput p2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hmblposition:I

    .line 1717
    sget v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hmblposition:I

    if-nez v0, :cond_0

    .line 1718
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->oh:Ljava/lang/String;

    const-string/jumbo v2, "\u539f\u59cb\u6bd4\u4f8b"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 1719
    :cond_0
    sget v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hmblposition:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1720
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->oh:Ljava/lang/String;

    const-string v2, "4:3\u7f29\u653e"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 1721
    :cond_1
    sget v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hmblposition:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1722
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->oh:Ljava/lang/String;

    const-string v2, "16:9\u7f29\u653e"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 1723
    :cond_2
    sget v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hmblposition:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1724
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->oh:Ljava/lang/String;

    const-string/jumbo v2, "\u5168\u5c4f\u62c9\u4f38"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 1725
    :cond_3
    sget v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hmblposition:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 1726
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->oh:Ljava/lang/String;

    const-string/jumbo v2, "\u7b49\u6bd4\u7f29\u653e"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 1727
    :cond_4
    sget v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hmblposition:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 1728
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->oh:Ljava/lang/String;

    const-string/jumbo v2, "\u5168\u5c4f\u88c1\u526a"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1730
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1731
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$19;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    sget v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->hmblposition:I

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->-$$Nest$mselectScales(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;I)V

    .line 1733
    return-void
.end method
