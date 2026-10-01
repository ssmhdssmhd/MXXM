.class Lcom/shenma/tvlauncher/HomeActivity2$14;
.super Ljava/lang/Object;
.source "HomeActivity2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/HomeActivity2;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/HomeActivity2;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/HomeActivity2;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/HomeActivity2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 440
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity2$14;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    iput-object p2, p0, Lcom/shenma/tvlauncher/HomeActivity2$14;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 443
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$14;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-static {v0}, Lcom/shenma/tvlauncher/HomeActivity2;->-$$Nest$fgettvTimeHome2(Lcom/shenma/tvlauncher/HomeActivity2;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ":"

    invoke-static {v1}, Lcom/shenma/tvlauncher/utils/Utils;->getStringTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    iget-object v0, p0, Lcom/shenma/tvlauncher/HomeActivity2$14;->val$handler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 446
    return-void
.end method
