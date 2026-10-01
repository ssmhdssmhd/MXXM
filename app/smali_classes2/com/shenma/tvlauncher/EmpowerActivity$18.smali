.class Lcom/shenma/tvlauncher/EmpowerActivity$18;
.super Ljava/lang/Object;
.source "EmpowerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/EmpowerActivity;->vip_goods_r_4()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

.field final synthetic val$open_ring:Ljava/lang/String;

.field final synthetic val$time:Ljava/lang/String;

.field final synthetic val$timeMillis:J

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/EmpowerActivity;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/EmpowerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 707
    iput-object p1, p0, Lcom/shenma/tvlauncher/EmpowerActivity$18;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    iput-object p2, p0, Lcom/shenma/tvlauncher/EmpowerActivity$18;->val$time:Ljava/lang/String;

    iput-wide p3, p0, Lcom/shenma/tvlauncher/EmpowerActivity$18;->val$timeMillis:J

    iput-object p5, p0, Lcom/shenma/tvlauncher/EmpowerActivity$18;->val$username:Ljava/lang/String;

    iput-object p6, p0, Lcom/shenma/tvlauncher/EmpowerActivity$18;->val$open_ring:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .line 710
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity$18;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/EmpowerActivity$18;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/EmpowerActivity;->-$$Nest$fgetPay_Type(Lcom/shenma/tvlauncher/EmpowerActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/EmpowerActivity;->-$$Nest$fputway(Lcom/shenma/tvlauncher/EmpowerActivity;Ljava/lang/String;)V

    .line 711
    iget-object v2, p0, Lcom/shenma/tvlauncher/EmpowerActivity$18;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/shenma/tvlauncher/EmpowerActivity$18;->val$time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/shenma/tvlauncher/EmpowerActivity$18;->val$timeMillis:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/EmpowerActivity$18;->val$username:Ljava/lang/String;

    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity$18;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->-$$Nest$fgetway(Lcom/shenma/tvlauncher/EmpowerActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/shenma/tvlauncher/EmpowerActivity$18;->val$open_ring:Ljava/lang/String;

    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity$18;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->-$$Nest$fgetPay_Name(Lcom/shenma/tvlauncher/EmpowerActivity;)[Ljava/lang/String;

    move-result-object v0

    aget-object v7, v0, p2

    invoke-static/range {v2 .. v7}, Lcom/shenma/tvlauncher/EmpowerActivity;->-$$Nest$mGetpay(Lcom/shenma/tvlauncher/EmpowerActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity$18;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/EmpowerActivity;->-$$Nest$fgetalertDialog(Lcom/shenma/tvlauncher/EmpowerActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 713
    return-void
.end method
