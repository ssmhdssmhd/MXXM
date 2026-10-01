.class Lcom/shenma/tvlauncher/tvback/TVBackActivity$8;
.super Ljava/lang/Object;
.source "TVBackActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

    .line 541
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$8;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .line 544
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$8;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetvv(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Lcom/shenma/tvlauncher/view/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/view/VideoView;->stopPlayback()V

    .line 545
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$8;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fputisOnline(Lcom/shenma/tvlauncher/tvback/TVBackActivity;Ljava/lang/Boolean;)V

    .line 546
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$8;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 548
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v2, "\u5bf9\u4e0d\u8d77!\u670d\u52a1\u5668\u5fd9..."

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 549
    new-instance v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity$8$1;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity$8$1;-><init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity$8;)V

    const-string/jumbo v3, "\u786e\u5b9a"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 558
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 559
    return v1
.end method
