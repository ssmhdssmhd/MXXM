.class Lcom/shenma/tvlauncher/tvback/TVBackActivity$10;
.super Ljava/lang/Object;
.source "TVBackActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/tvback/TVBackActivity;->setvvListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 606
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$10;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 610
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$10;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fputisOnline(Lcom/shenma/tvlauncher/tvback/TVBackActivity;Ljava/lang/Boolean;)V

    .line 611
    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$sfgetmedialist()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    .line 612
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 611
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$sfgetmedialist()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$10;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetmPostion(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)I

    move-result v3

    add-int/2addr v3, v1

    if-le v0, v3, :cond_0

    .line 612
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$10;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fputisOnline(Lcom/shenma/tvlauncher/tvback/TVBackActivity;Ljava/lang/Boolean;)V

    .line 613
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$10;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetmPostion(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fputmPostion(Lcom/shenma/tvlauncher/tvback/TVBackActivity;I)V

    .line 615
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$10;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetvv(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Lcom/shenma/tvlauncher/view/VideoView;

    move-result-object v0

    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$sfgetmedialist()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$10;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetmPostion(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/tvback/domain/MediaInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvback/domain/MediaInfo;->getMediaurl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/view/VideoView;->setVideoPath(Ljava/lang/String;)V

    goto :goto_0

    .line 616
    :cond_0
    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$sfgetmNowProgramlist()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$sfgetmNowProgramlist()Ljava/util/ArrayList;

    move-result-object v0

    .line 617
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$10;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v3}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetmProgramPostion(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)I

    move-result v3

    add-int/2addr v3, v1

    if-le v0, v3, :cond_1

    .line 618
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$10;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fputisOnline(Lcom/shenma/tvlauncher/tvback/TVBackActivity;Ljava/lang/Boolean;)V

    .line 619
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$10;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    sget v2, Lcom/shenma/tvlauncher/R$string;->load_msg:I

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Utils;->loadingShow_tv(Landroid/content/Context;I)V

    .line 620
    const-string v0, "TVBackActivity"

    const-string/jumbo v2, "\u64ad\u653e\u5b8c\u6210....loadingShow_tv"

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$10;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetmProgramPostion(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fputmProgramPostion(Lcom/shenma/tvlauncher/tvback/TVBackActivity;I)V

    .line 622
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$10;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$sfgetmNowProgramlist()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$10;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetmProgramPostion(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;

    .line 623
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->getProgramUrl()Ljava/lang/String;

    move-result-object v1

    .line 622
    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$mloadMediaFromXml(Lcom/shenma/tvlauncher/tvback/TVBackActivity;Ljava/lang/String;I)V

    goto :goto_0

    .line 625
    :cond_1
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$10;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetvv(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Lcom/shenma/tvlauncher/view/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/VideoView;->stopPlayback()V

    .line 628
    :goto_0
    return-void
.end method
