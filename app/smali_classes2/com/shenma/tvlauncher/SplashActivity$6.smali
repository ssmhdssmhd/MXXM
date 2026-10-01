.class Lcom/shenma/tvlauncher/SplashActivity$6;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/SplashActivity;->Mainurl(Ljava/lang/String;Ljava/lang/String;)V
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

.field final synthetic val$Authorization:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/SplashActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/SplashActivity;
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

    .line 361
    iput-object p1, p0, Lcom/shenma/tvlauncher/SplashActivity$6;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    iput-object p2, p0, Lcom/shenma/tvlauncher/SplashActivity$6;->val$Authorization:Ljava/lang/String;

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

    .line 361
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/SplashActivity$6;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .line 363
    iget-object v0, p0, Lcom/shenma/tvlauncher/SplashActivity$6;->this$0:Lcom/shenma/tvlauncher/SplashActivity;

    iget-object v1, p0, Lcom/shenma/tvlauncher/SplashActivity$6;->val$Authorization:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/shenma/tvlauncher/SplashActivity;->RequestResponse(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    return-void
.end method
