.class Lcom/shenma/tvlauncher/SplashActivity$11;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/SplashActivity;->Category()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/SplashActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/SplashActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/SplashActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1092
    iput-object p1, p0, Lcom/shenma/tvlauncher/SplashActivity$11;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1092
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/SplashActivity$11;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .line 1094
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$11;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v0, p1}, Lcom/shenma/tvlauncher/SplashActivity;->-$$Nest$fputcategory(Lcom/shenma/tvlauncher/SplashActivity;Ljava/lang/String;)V

    .line 1095
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$11;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SplashActivity;->-$$Nest$fgetcategory(Lcom/shenma/tvlauncher/SplashActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$11;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SplashActivity;->-$$Nest$fgetcategory(Lcom/shenma/tvlauncher/SplashActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$11;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SplashActivity;->-$$Nest$fgetcategory(Lcom/shenma/tvlauncher/SplashActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1096
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$11;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/SplashActivity;->-$$Nest$mloadMainUI(Lcom/shenma/tvlauncher/SplashActivity;)V

    .line 1098
    :cond_0
    return-void
.end method
