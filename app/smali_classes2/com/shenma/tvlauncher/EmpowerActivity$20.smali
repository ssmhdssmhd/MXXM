.class Lcom/shenma/tvlauncher/EmpowerActivity$20;
.super Ljava/lang/Object;
.source "EmpowerActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/EmpowerActivity;->Getpay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/EmpowerActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/EmpowerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/EmpowerActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 753
    iput-object p1, p0, Lcom/shenma/tvlauncher/EmpowerActivity$20;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 755
    iget-object v0, p0, Lcom/shenma/tvlauncher/EmpowerActivity$20;->this$0:Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-virtual {v0, p1}, Lcom/shenma/tvlauncher/EmpowerActivity;->Error(Lcom/android/volley/VolleyError;)V

    .line 756
    return-void
.end method
