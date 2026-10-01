.class public Lcom/shenma/tvlauncher/view/JSONService;
.super Landroid/app/Service;
.source "JSONService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/view/JSONService$JSONHandler;,
        Lcom/shenma/tvlauncher/view/JSONService$JSONTimerTask;
    }
.end annotation


# static fields
.field public static final MSG_REQUEST_DATA:I = 0x1


# instance fields
.field public Queue:Lcom/android/volley/RequestQueue;

.field public handler:Landroid/os/Handler;

.field public interval:I

.field public timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 32
    sget v0, Lcom/shenma/tvlauncher/utils/Constant;->g:I

    iput v0, p0, Lcom/shenma/tvlauncher/view/JSONService;->interval:I

    .line 33
    new-instance v0, Lcom/shenma/tvlauncher/view/JSONService$JSONHandler;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/view/JSONService$JSONHandler;-><init>(Lcom/shenma/tvlauncher/view/JSONService;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/JSONService;->handler:Landroid/os/Handler;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/JSONService;->timer:Ljava/util/Timer;

    return-void
.end method

.method private Mainurl(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .line 108
    move-object v0, p0

    .line 109
    .local v0, "jSONService":Lcom/shenma/tvlauncher/view/JSONService;
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/JSONService;->Queue:Lcom/android/volley/RequestQueue;

    new-instance v2, Lcom/android/volley/toolbox/StringRequest;

    new-instance v3, Lcom/shenma/tvlauncher/view/JSONService$1;

    invoke-direct {v3, p0, v0}, Lcom/shenma/tvlauncher/view/JSONService$1;-><init>(Lcom/shenma/tvlauncher/view/JSONService;Lcom/shenma/tvlauncher/view/JSONService;)V

    new-instance v4, Lcom/shenma/tvlauncher/view/JSONService$2;

    invoke-direct {v4, p0}, Lcom/shenma/tvlauncher/view/JSONService$2;-><init>(Lcom/shenma/tvlauncher/view/JSONService;)V

    invoke-direct {v2, p1, v3, v4}, Lcom/android/volley/toolbox/StringRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 132
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 79
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()V
    .locals 7

    .line 84
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 85
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/JSONService;->Queue:Lcom/android/volley/RequestQueue;

    .line 86
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/JSONService;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/JSONService;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_0

    .line 89
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/JSONService;->timer:Ljava/util/Timer;

    .line 91
    :goto_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/JSONService;->timer:Ljava/util/Timer;

    new-instance v2, Lcom/shenma/tvlauncher/view/JSONService$JSONTimerTask;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/view/JSONService$JSONTimerTask;-><init>(Lcom/shenma/tvlauncher/view/JSONService;)V

    iget v0, p0, Lcom/shenma/tvlauncher/view/JSONService;->interval:I

    int-to-long v3, v0

    const-wide/32 v5, 0x659fd1a0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 92
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 96
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 97
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/JSONService;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/JSONService;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 100
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 104
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
