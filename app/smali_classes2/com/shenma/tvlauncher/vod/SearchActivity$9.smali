.class Lcom/shenma/tvlauncher/vod/SearchActivity$9;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/vod/SearchActivity;->findViewById()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/SearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/SearchActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 360
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "arg0"    # Landroid/widget/TextView;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/view/KeyEvent;

    .line 364
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    const-string v1, "MOVIE"

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fputtype(Lcom/shenma/tvlauncher/vod/SearchActivity;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fgetsearch_keybord_input(Lcom/shenma/tvlauncher/vod/SearchActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 368
    .local v0, "text":Landroid/text/Editable;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 369
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, "search":Ljava/lang/String;
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fputsb(Lcom/shenma/tvlauncher/vod/SearchActivity;Ljava/lang/StringBuilder;)V

    .line 372
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fgetsb(Lcom/shenma/tvlauncher/vod/SearchActivity;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .end local v1    # "search":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$9;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$mreadyToSearch(Lcom/shenma/tvlauncher/vod/SearchActivity;)V

    .line 377
    .end local v0    # "text":Landroid/text/Editable;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
