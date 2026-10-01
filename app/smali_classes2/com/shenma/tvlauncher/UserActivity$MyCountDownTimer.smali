.class Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;
.super Landroid/os/CountDownTimer;
.source "UserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/UserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCountDownTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/UserActivity;


# direct methods
.method public constructor <init>(Lcom/shenma/tvlauncher/UserActivity;JJ)V
    .locals 0
    .param p2, "millisInFuture"    # J
    .param p4, "countDownInterval"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 2107
    iput-object p1, p0, Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    .line 2108
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 2109
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 2122
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetsend_code_bt(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$string;->send_code:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 2124
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetsend_code_bt(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 2125
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetsend_code_bt(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2126
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$mclearTimer(Lcom/shenma/tvlauncher/UserActivity;)V

    .line 2127
    return-void
.end method

.method public onTick(J)V
    .locals 4
    .param p1, "millisInFuture"    # J

    .line 2114
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetsend_code_bt(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 2115
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetsend_code_bt(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2116
    iget-object v0, p0, Lcom/shenma/tvlauncher/UserActivity$MyCountDownTimer;->this$0:Lcom/shenma/tvlauncher/UserActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/UserActivity;->-$$Nest$fgetsend_code_bt(Lcom/shenma/tvlauncher/UserActivity;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u79d2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2117
    return-void
.end method
