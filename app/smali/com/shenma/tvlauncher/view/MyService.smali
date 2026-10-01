.class public Lcom/shenma/tvlauncher/view/MyService;
.super Landroid/app/Service;
.source "MyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/view/MyService$TimeDisplay;,
        Lcom/shenma/tvlauncher/view/MyService$displayTime;
    }
.end annotation


# instance fields
.field private Authorization:Ljava/lang/String;

.field private Post:I

.field private UA:Ljava/lang/String;

.field private mConcurrent:I

.field private mHandler:Landroid/os/Handler;

.field public mQueue:Lcom/android/volley/RequestQueue;

.field private mTimer:Ljava/util/Timer;

.field private mTimer1:Ljava/util/Timer;

.field private mUrl:Ljava/lang/String;

.field private time:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetAuthorization(Lcom/shenma/tvlauncher/view/MyService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/view/MyService;->Authorization:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetPost(Lcom/shenma/tvlauncher/view/MyService;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/view/MyService;->Post:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetUA(Lcom/shenma/tvlauncher/view/MyService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/view/MyService;->UA:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConcurrent(Lcom/shenma/tvlauncher/view/MyService;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/view/MyService;->mConcurrent:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/shenma/tvlauncher/view/MyService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/view/MyService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUrl(Lcom/shenma/tvlauncher/view/MyService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/view/MyService;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetTimeUrl(Lcom/shenma/tvlauncher/view/MyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/MyService;->getTimeUrl()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendUrl(Lcom/shenma/tvlauncher/view/MyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/MyService;->sendUrl()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/view/MyService;->Post:I

    .line 41
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/MyService;->time:Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/shenma/tvlauncher/view/MyService$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/view/MyService$1;-><init>(Lcom/shenma/tvlauncher/view/MyService;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/MyService;->mHandler:Landroid/os/Handler;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/MyService;->mTimer:Ljava/util/Timer;

    .line 55
    iput-object v0, p0, Lcom/shenma/tvlauncher/view/MyService;->mTimer1:Ljava/util/Timer;

    return-void
.end method

.method private getTimeUrl()V
    .locals 7

    .line 86
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyService;->mQueue:Lcom/android/volley/RequestQueue;

    new-instance v1, Lcom/shenma/tvlauncher/view/MyService$4;

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->to:Ljava/lang/String;

    new-instance v5, Lcom/shenma/tvlauncher/view/MyService$2;

    invoke-direct {v5, p0}, Lcom/shenma/tvlauncher/view/MyService$2;-><init>(Lcom/shenma/tvlauncher/view/MyService;)V

    new-instance v6, Lcom/shenma/tvlauncher/view/MyService$3;

    invoke-direct {v6, p0}, Lcom/shenma/tvlauncher/view/MyService$3;-><init>(Lcom/shenma/tvlauncher/view/MyService;)V

    const/4 v3, 0x1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/shenma/tvlauncher/view/MyService$4;-><init>(Lcom/shenma/tvlauncher/view/MyService;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 109
    return-void
.end method

.method private sendUrl()V
    .locals 2

    .line 157
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/shenma/tvlauncher/view/MyService$5;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/view/MyService$5;-><init>(Lcom/shenma/tvlauncher/view/MyService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 186
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 187
    return-void
.end method


# virtual methods
.method public getTimeUrl(Ljava/lang/String;)V
    .locals 9
    .param p1, "response"    # Ljava/lang/String;

    .line 113
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->a:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, "JSONObject":Lorg/json/JSONObject;
    sget-object v1, Lcom/shenma/tvlauncher/utils/Constant;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 116
    .local v1, "onSwitch":I
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->S:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/view/MyService;->mConcurrent:I

    .line 117
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/view/MyService;->time:Ljava/lang/String;

    .line 118
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/shenma/tvlauncher/view/MyService;->Post:I

    .line 119
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->t:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/view/MyService;->UA:Ljava/lang/String;

    .line 120
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->Y:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/view/MyService;->Authorization:Ljava/lang/String;

    .line 121
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->v:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/view/MyService;->mUrl:Ljava/lang/String;

    .line 122
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->O:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;->Failed:Ljava/lang/String;

    .line 124
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/shenma/tvlauncher/view/MyService;->mTimer1:Ljava/util/Timer;

    .line 126
    .local v2, "timer":Ljava/util/Timer;
    if-eqz v2, :cond_1

    .line 127
    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 128
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/shenma/tvlauncher/view/MyService;->mTimer1:Ljava/util/Timer;

    goto :goto_0

    .line 130
    .end local v2    # "timer":Ljava/util/Timer;
    :cond_0
    iget-object v2, p0, Lcom/shenma/tvlauncher/view/MyService;->mTimer1:Ljava/util/Timer;

    if-nez v2, :cond_1

    .line 131
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    move-object v3, v2

    .line 132
    .local v3, "timer2":Ljava/util/Timer;
    iput-object v3, p0, Lcom/shenma/tvlauncher/view/MyService;->mTimer1:Ljava/util/Timer;

    .line 133
    new-instance v4, Lcom/shenma/tvlauncher/view/MyService$displayTime;

    invoke-direct {v4, p0}, Lcom/shenma/tvlauncher/view/MyService$displayTime;-><init>(Lcom/shenma/tvlauncher/view/MyService;)V

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x3e8

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 130
    .end local v3    # "timer2":Ljava/util/Timer;
    :cond_1
    :goto_0
    goto :goto_1

    .line 137
    .end local v0    # "JSONObject":Lorg/json/JSONObject;
    .end local v1    # "onSwitch":I
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 135
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 136
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 139
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    nop

    .line 140
    :goto_2
    return-void
.end method

.method public getUrlok(Ljava/lang/String;)V
    .locals 0
    .param p1, "response"    # Ljava/lang/String;

    .line 191
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 60
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()V
    .locals 8

    .line 64
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/MyService;->mQueue:Lcom/android/volley/RequestQueue;

    .line 65
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyService;->mTimer:Ljava/util/Timer;

    .line 66
    .local v0, "timer":Ljava/util/Timer;
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_0

    .line 69
    :cond_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/shenma/tvlauncher/view/MyService;->mTimer:Ljava/util/Timer;

    .line 71
    :goto_0
    iget-object v2, p0, Lcom/shenma/tvlauncher/view/MyService;->mTimer:Ljava/util/Timer;

    new-instance v3, Lcom/shenma/tvlauncher/view/MyService$TimeDisplay;

    invoke-direct {v3, p0}, Lcom/shenma/tvlauncher/view/MyService$TimeDisplay;-><init>(Lcom/shenma/tvlauncher/view/MyService;)V

    iget-object v1, p0, Lcom/shenma/tvlauncher/view/MyService;->time:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v6, v6, v4

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 72
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 194
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 195
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 196
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/MyService;->mTimer1:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 197
    return-void
.end method
