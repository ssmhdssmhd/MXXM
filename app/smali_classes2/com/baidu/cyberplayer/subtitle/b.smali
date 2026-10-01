.class public final Lcom/baidu/cyberplayer/subtitle/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/cyberplayer/utils/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/cyberplayer/subtitle/b$a;
    }
.end annotation


# instance fields
.field private a:I

.field private a:Landroid/content/Context;

.field private a:Landroid/os/Handler;

.field private a:Landroid/os/HandlerThread;

.field private a:Lcom/baidu/cyberplayer/core/BVideoView;

.field private a:Lcom/baidu/cyberplayer/subtitle/b$a;

.field private a:Lcom/baidu/cyberplayer/subtitle/c;

.field private a:Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;

.field private a:Lcom/baidu/cyberplayer/utils/u$a;

.field private a:Lcom/baidu/cyberplayer/utils/w;

.field private a:Ljava/lang/String;

.field private volatile a:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/baidu/cyberplayer/core/BVideoView;Lcom/baidu/cyberplayer/subtitle/c;Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;)V
    .locals 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Z

    .line 74
    new-instance v0, Lcom/baidu/cyberplayer/subtitle/b$1;

    invoke-direct {v0, p0}, Lcom/baidu/cyberplayer/subtitle/b$1;-><init>(Lcom/baidu/cyberplayer/subtitle/b;)V

    iput-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Landroid/os/Handler;

    .line 126
    iput-object p1, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Landroid/content/Context;

    .line 127
    iput-object p2, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    .line 128
    iput-object p3, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Lcom/baidu/cyberplayer/subtitle/c;

    .line 129
    iput-object p4, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;

    .line 130
    return-void
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/subtitle/b;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:I

    return p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/subtitle/b;)Landroid/content/Context;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/subtitle/b;)Landroid/os/HandlerThread;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/subtitle/b;)Lcom/baidu/cyberplayer/core/BVideoView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/subtitle/b;)Lcom/baidu/cyberplayer/subtitle/b$a;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Lcom/baidu/cyberplayer/subtitle/b$a;

    return-object p0
.end method

.method static a(Landroid/content/Context;Lcom/baidu/cyberplayer/core/BVideoView;Lcom/baidu/cyberplayer/subtitle/c;Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;)Lcom/baidu/cyberplayer/subtitle/b;
    .locals 1

    .line 110
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    new-instance v0, Lcom/baidu/cyberplayer/subtitle/b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/baidu/cyberplayer/subtitle/b;-><init>(Landroid/content/Context;Lcom/baidu/cyberplayer/core/BVideoView;Lcom/baidu/cyberplayer/subtitle/c;Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;)V

    return-object v0

    .line 111
    :cond_1
    :goto_0
    const/16 p1, 0xbba

    const-string/jumbo p2, "videoView or subtitleView is null"

    const-string v0, ""

    invoke-static {p0, v0, p3, p1, p2}, Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;->notifyErrorOccurred(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;ILjava/lang/String;)V

    .line 113
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/subtitle/b;)Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/subtitle/b;)Lcom/baidu/cyberplayer/utils/u$a;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Lcom/baidu/cyberplayer/utils/u$a;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/subtitle/b;)Lcom/baidu/cyberplayer/utils/w;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Lcom/baidu/cyberplayer/utils/w;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/subtitle/b;Lcom/baidu/cyberplayer/utils/w;)Lcom/baidu/cyberplayer/utils/w;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Lcom/baidu/cyberplayer/utils/w;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/subtitle/b;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Ljava/lang/String;

    return-object p0
.end method

.method private a(Landroid/os/Handler;IILjava/lang/String;)V
    .locals 1

    .line 161
    new-instance v0, Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;

    invoke-direct {v0, p3, p4}, Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;-><init>(ILjava/lang/String;)V

    .line 162
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p3

    .line 163
    iput p2, p3, Landroid/os/Message;->what:I

    .line 164
    iput-object v0, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 165
    invoke-virtual {p1, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 166
    return-void
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/subtitle/b;Landroid/os/Handler;IILjava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/cyberplayer/subtitle/b;->a(Landroid/os/Handler;IILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/subtitle/b;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Z

    return p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/subtitle/b;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Z

    return p1
.end method

.method private b()V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Lcom/baidu/cyberplayer/subtitle/b$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/subtitle/b$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 249
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Lcom/baidu/cyberplayer/utils/u$a;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Lcom/baidu/cyberplayer/utils/u$a;

    invoke-interface {v0, v1}, Lcom/baidu/cyberplayer/utils/u$a;->a(Lcom/baidu/cyberplayer/utils/v;)V

    .line 252
    :cond_0
    iput-object v1, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Ljava/lang/String;

    .line 253
    iput-object v1, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Lcom/baidu/cyberplayer/utils/w;

    .line 254
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .line 137
    iput-object p1, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 139
    const-string v0, ".ass"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-string v0, ".ssa"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    const-string v0, ".srt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 142
    const/4 p1, 0x0

    iput p1, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:I

    goto :goto_1

    .line 140
    :cond_1
    :goto_0
    iput v1, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:I

    .line 144
    :cond_2
    :goto_1
    iget p1, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:I

    if-eq p1, v1, :cond_3

    iget p1, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:I

    if-eqz p1, :cond_3

    .line 145
    const-string p1, "Subtitle"

    const-string v0, "Unknown type of the file"

    invoke-static {p1, v0}, Lcom/baidu/cyberplayer/utils/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object p1, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Landroid/os/Handler;

    const/16 v1, 0x7d1

    const/16 v2, 0xbbb

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/baidu/cyberplayer/subtitle/b;->a(Landroid/os/Handler;IILjava/lang/String;)V

    .line 148
    return-void

    .line 150
    :cond_3
    invoke-static {}, Lcom/baidu/cyberplayer/utils/x;->a()Lcom/baidu/cyberplayer/utils/x;

    move-result-object p1

    iget v0, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:I

    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/x;->a(I)Lcom/baidu/cyberplayer/utils/w;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Lcom/baidu/cyberplayer/utils/w;

    .line 151
    return-void
.end method

.method private c()V
    .locals 3

    .line 260
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "subtitle Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Landroid/os/HandlerThread;

    .line 261
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 262
    new-instance v0, Lcom/baidu/cyberplayer/subtitle/b$a;

    iget-object v1, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/baidu/cyberplayer/subtitle/b$a;-><init>(Lcom/baidu/cyberplayer/subtitle/b;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Lcom/baidu/cyberplayer/subtitle/b$a;

    .line 263
    return-void
.end method

.method private d()V
    .locals 2

    .line 285
    nop

    .line 286
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/subtitle/b;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 292
    :pswitch_0
    goto :goto_0

    .line 288
    :pswitch_1
    new-instance v0, Lcom/baidu/cyberplayer/subtitle/a;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/subtitle/a;-><init>()V

    .line 289
    goto :goto_1

    .line 296
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Lcom/baidu/cyberplayer/subtitle/c;

    invoke-virtual {v1, v0}, Lcom/baidu/cyberplayer/subtitle/c;->a(Lcom/baidu/cyberplayer/subtitle/c$a;)V

    .line 297
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private e(I)V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Lcom/baidu/cyberplayer/subtitle/b$a;

    if-nez v0, :cond_0

    .line 204
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Lcom/baidu/cyberplayer/subtitle/b$a;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/subtitle/b$a;->removeMessages(I)V

    .line 208
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Lcom/baidu/cyberplayer/subtitle/b$a;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/subtitle/b$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 209
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 210
    iget-object p1, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Lcom/baidu/cyberplayer/subtitle/b$a;

    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/subtitle/b$a;->sendMessage(Landroid/os/Message;)Z

    .line 211
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 270
    iget v0, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:I

    return v0
.end method

.method public a()V
    .locals 2

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Z

    .line 174
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Lcom/baidu/cyberplayer/subtitle/b$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Lcom/baidu/cyberplayer/subtitle/b$a;

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/subtitle/b$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 179
    :cond_0
    iput-object v1, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Ljava/lang/String;

    .line 180
    iput-object v1, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Lcom/baidu/cyberplayer/utils/w;

    .line 181
    const-string v0, "Subtitle"

    const-string v1, "The Subtitle  released."

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/utils/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public a(I)V
    .locals 2

    .line 189
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/subtitle/b;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    if-gez p1, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Lcom/baidu/cyberplayer/utils/u$a;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Lcom/baidu/cyberplayer/utils/u$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/baidu/cyberplayer/utils/u$a;->a(Lcom/baidu/cyberplayer/utils/v;)V

    .line 195
    :cond_1
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/subtitle/b;->e(I)V

    .line 196
    return-void

    .line 190
    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/u$a;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Lcom/baidu/cyberplayer/utils/u$a;

    .line 219
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 227
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object p1, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;

    const/16 v1, 0xbba

    const-string/jumbo v2, "start subtitle uriString is null!"

    const-string v3, ""

    invoke-static {p1, v3, v0, v1, v2}, Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;->notifyErrorOccurred(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;ILjava/lang/String;)V

    .line 230
    return-void

    .line 233
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Z

    if-eqz v0, :cond_1

    .line 234
    invoke-direct {p0}, Lcom/baidu/cyberplayer/subtitle/b;->b()V

    goto :goto_0

    .line 236
    :cond_1
    invoke-direct {p0}, Lcom/baidu/cyberplayer/subtitle/b;->c()V

    .line 238
    :goto_0
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/subtitle/b;->b(Ljava/lang/String;)V

    .line 239
    invoke-direct {p0}, Lcom/baidu/cyberplayer/subtitle/b;->d()V

    .line 240
    iget-object p1, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Lcom/baidu/cyberplayer/subtitle/b$a;

    const/16 v0, 0x3e9

    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/subtitle/b$a;->sendEmptyMessage(I)Z

    .line 241
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Z

    .line 242
    return-void
.end method

.method a()Z
    .locals 1

    .line 278
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Z

    return v0
.end method

.method b(I)V
    .locals 2

    .line 565
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/subtitle/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Lcom/baidu/cyberplayer/subtitle/b$a;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Lcom/baidu/cyberplayer/subtitle/b$a;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/subtitle/b$a;->removeMessages(I)V

    .line 567
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Lcom/baidu/cyberplayer/subtitle/b$a;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/subtitle/b$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 568
    const/16 v1, 0x3ec

    iput v1, v0, Landroid/os/Message;->what:I

    .line 569
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 570
    iget-object p1, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Lcom/baidu/cyberplayer/subtitle/b$a;

    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/subtitle/b$a;->sendMessage(Landroid/os/Message;)Z

    .line 572
    :cond_0
    return-void
.end method

.method c(I)V
    .locals 2

    .line 579
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/subtitle/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Lcom/baidu/cyberplayer/subtitle/b$a;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Lcom/baidu/cyberplayer/subtitle/b$a;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/subtitle/b$a;->removeMessages(I)V

    .line 581
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Lcom/baidu/cyberplayer/subtitle/b$a;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/subtitle/b$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 582
    const/16 v1, 0x3ed

    iput v1, v0, Landroid/os/Message;->what:I

    .line 583
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 584
    iget-object p1, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Lcom/baidu/cyberplayer/subtitle/b$a;

    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/subtitle/b$a;->sendMessage(Landroid/os/Message;)Z

    .line 586
    :cond_0
    return-void
.end method

.method d(I)V
    .locals 2

    .line 593
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/subtitle/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Lcom/baidu/cyberplayer/subtitle/b$a;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Lcom/baidu/cyberplayer/subtitle/b$a;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/subtitle/b$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 595
    const/16 v1, 0x3ee

    iput v1, v0, Landroid/os/Message;->what:I

    .line 596
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 597
    iget-object p1, p0, Lcom/baidu/cyberplayer/subtitle/b;->a:Lcom/baidu/cyberplayer/subtitle/b$a;

    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/subtitle/b$a;->sendMessage(Landroid/os/Message;)Z

    .line 599
    :cond_0
    return-void
.end method
