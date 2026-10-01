.class Lcom/shenma/tvlauncher/ClearActivity$2;
.super Ljava/lang/Object;
.source "ClearActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/ClearActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/ClearActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/ClearActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/ClearActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/shenma/tvlauncher/ClearActivity$2;->this$0:Lcom/shenma/tvlauncher/ClearActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 72
    iget-object v0, p0, Lcom/shenma/tvlauncher/ClearActivity$2;->this$0:Lcom/shenma/tvlauncher/ClearActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/ClearActivity;->-$$Nest$fgetdao(Lcom/shenma/tvlauncher/ClearActivity;)Lcom/shenma/tvlauncher/vod/dao/VodDao;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/dao/VodDao;->deleteAllByWhere(I)V

    .line 73
    iget-object v0, p0, Lcom/shenma/tvlauncher/ClearActivity$2;->this$0:Lcom/shenma/tvlauncher/ClearActivity;

    iget-object v0, v0, Lcom/shenma/tvlauncher/ClearActivity;->context:Landroid/content/Context;

    sget v1, Lcom/shenma/tvlauncher/R$string;->Collection_record_cleaning_successful:I

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_smile:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;II)V

    .line 74
    return-void
.end method
