.class Lcom/shenma/tvlauncher/tvback/TVBackActivity$8$1;
.super Ljava/lang/Object;
.source "TVBackActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/tvback/TVBackActivity$8;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shenma/tvlauncher/tvback/TVBackActivity$8;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity$8;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 550
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$8$1;->this$1:Lcom/shenma/tvlauncher/tvback/TVBackActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 554
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 556
    return-void
.end method
