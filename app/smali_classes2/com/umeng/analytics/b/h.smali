.class public final Lcom/umeng/analytics/b/h;
.super Lcom/umeng/analytics/b/e;
.source "NetCache.java"

# interfaces
.implements Lcom/umeng/analytics/onlineconfig/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/b/h$c;,
        Lcom/umeng/analytics/b/h$f;,
        Lcom/umeng/analytics/b/h$d;,
        Lcom/umeng/analytics/b/h$b;,
        Lcom/umeng/analytics/b/h$a;,
        Lcom/umeng/analytics/b/h$e;
    }
.end annotation


# instance fields
.field private d:Lcom/umeng/analytics/b/i;

.field private e:Lcom/umeng/analytics/b/h$e;

.field private f:Lcom/umeng/analytics/b/o;

.field private g:Lcom/umeng/analytics/a/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 27
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b/e;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/b/h;->d:Lcom/umeng/analytics/b/i;

    .line 22
    iput-object v0, p0, Lcom/umeng/analytics/b/h;->e:Lcom/umeng/analytics/b/h$e;

    .line 23
    iput-object v0, p0, Lcom/umeng/analytics/b/h;->f:Lcom/umeng/analytics/b/o;

    .line 24
    iput-object v0, p0, Lcom/umeng/analytics/b/h;->g:Lcom/umeng/analytics/a/d;

    .line 29
    invoke-static {p1}, Lcom/umeng/analytics/a/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b/h;->g:Lcom/umeng/analytics/a/d;

    .line 30
    new-instance v0, Lcom/umeng/analytics/b/o;

    invoke-direct {v0, p1}, Lcom/umeng/analytics/b/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/analytics/b/h;->f:Lcom/umeng/analytics/b/o;

    .line 31
    new-instance v0, Lcom/umeng/analytics/b/i;

    invoke-direct {v0, p1}, Lcom/umeng/analytics/b/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/analytics/b/h;->d:Lcom/umeng/analytics/b/i;

    .line 32
    iget-object v0, p0, Lcom/umeng/analytics/b/h;->d:Lcom/umeng/analytics/b/i;

    iget-object v1, p0, Lcom/umeng/analytics/b/h;->f:Lcom/umeng/analytics/b/o;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/b/i;->a(Lcom/umeng/analytics/b/o;)V

    .line 34
    invoke-static {p1}, Lcom/umeng/analytics/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/f;->a()[I

    move-result-object v0

    .line 35
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-direct {p0, p1, v1, v0}, Lcom/umeng/analytics/b/h;->a(Landroid/content/Context;II)V

    .line 36
    return-void
.end method

.method private a(Landroid/content/Context;II)V
    .locals 3

    .line 75
    packed-switch p2, :pswitch_data_0

    .line 95
    :pswitch_0
    new-instance p1, Lcom/umeng/analytics/b/h$a;

    invoke-direct {p1}, Lcom/umeng/analytics/b/h$a;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/b/h;->e:Lcom/umeng/analytics/b/h$e;

    goto :goto_0

    .line 92
    :pswitch_1
    new-instance p1, Lcom/umeng/analytics/b/h$c;

    invoke-direct {p1, p0, p3}, Lcom/umeng/analytics/b/h$c;-><init>(Lcom/umeng/analytics/b/g;I)V

    iput-object p1, p0, Lcom/umeng/analytics/b/h;->e:Lcom/umeng/analytics/b/h$e;

    .line 93
    goto :goto_0

    .line 80
    :pswitch_2
    new-instance p1, Lcom/umeng/analytics/b/h$b;

    iget-object v0, p0, Lcom/umeng/analytics/b/h;->f:Lcom/umeng/analytics/b/o;

    int-to-long v1, p3

    invoke-direct {p1, v0, v1, v2}, Lcom/umeng/analytics/b/h$b;-><init>(Lcom/umeng/analytics/b/o;J)V

    iput-object p1, p0, Lcom/umeng/analytics/b/h;->e:Lcom/umeng/analytics/b/h$e;

    .line 81
    goto :goto_0

    .line 89
    :pswitch_3
    new-instance v0, Lcom/umeng/analytics/b/h$f;

    invoke-direct {v0, p1}, Lcom/umeng/analytics/b/h$f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/analytics/b/h;->e:Lcom/umeng/analytics/b/h$e;

    .line 90
    goto :goto_0

    .line 83
    :pswitch_4
    new-instance p1, Lcom/umeng/analytics/b/h$d;

    iget-object v0, p0, Lcom/umeng/analytics/b/h;->f:Lcom/umeng/analytics/b/o;

    invoke-direct {p1, v0}, Lcom/umeng/analytics/b/h$d;-><init>(Lcom/umeng/analytics/b/o;)V

    iput-object p1, p0, Lcom/umeng/analytics/b/h;->e:Lcom/umeng/analytics/b/h$e;

    .line 84
    goto :goto_0

    .line 77
    :pswitch_5
    new-instance p1, Lcom/umeng/analytics/b/h$a;

    invoke-direct {p1}, Lcom/umeng/analytics/b/h$a;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/b/h;->e:Lcom/umeng/analytics/b/h$e;

    .line 78
    goto :goto_0

    .line 86
    :pswitch_6
    new-instance p1, Lcom/umeng/analytics/b/h$e;

    invoke-direct {p1}, Lcom/umeng/analytics/b/h$e;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/b/h;->e:Lcom/umeng/analytics/b/h$e;

    .line 87
    nop

    .line 99
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "report policy:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " interval:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MobclickAgent"

    invoke-static {p2, p1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private j()V
    .locals 3

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b/h;->f:Lcom/umeng/analytics/b/o;

    invoke-virtual {v0}, Lcom/umeng/analytics/b/o;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Lcom/umeng/analytics/d/b;

    iget-object v1, p0, Lcom/umeng/analytics/b/h;->f:Lcom/umeng/analytics/b/o;

    invoke-virtual {v1}, Lcom/umeng/analytics/b/o;->j()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/umeng/analytics/d/b;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/b/h;->a(Lcom/umeng/analytics/d/b;)V

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/umeng/analytics/b/h;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    .line 111
    instance-of v1, v0, Ljava/lang/OutOfMemoryError;

    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/umeng/analytics/b/h;->c()V

    .line 115
    :cond_1
    nop

    .line 116
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 119
    :goto_0
    return-void
.end method

.method private k()V
    .locals 6

    .line 122
    invoke-virtual {p0}, Lcom/umeng/analytics/b/h;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/f;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lcom/umeng/analytics/f;->f()Z

    move-result v1

    .line 125
    nop

    .line 127
    const-string v2, "MobclickAgent"

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {v0}, Lcom/umeng/analytics/f;->d()[B

    move-result-object v3

    goto :goto_0

    .line 130
    :cond_0
    iget-object v3, p0, Lcom/umeng/analytics/b/h;->g:Lcom/umeng/analytics/a/d;

    invoke-virtual {v3}, Lcom/umeng/analytics/a/d;->a()V

    .line 131
    invoke-virtual {p0}, Lcom/umeng/analytics/b/h;->b()[B

    move-result-object v3

    .line 133
    if-nez v3, :cond_1

    .line 134
    const-string v0, "message is null"

    invoke-static {v2, v0}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/umeng/analytics/b/h;->e()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/umeng/analytics/b/h;->e()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/umeng/analytics/a/c;->a(Landroid/content/Context;Ljava/lang/String;[B)Lcom/umeng/analytics/a/c;

    move-result-object v3

    .line 139
    invoke-virtual {v3}, Lcom/umeng/analytics/a/c;->c()[B

    move-result-object v3

    .line 140
    invoke-virtual {v0}, Lcom/umeng/analytics/f;->c()V

    .line 145
    :goto_0
    iget-object v4, p0, Lcom/umeng/analytics/b/h;->d:Lcom/umeng/analytics/b/i;

    invoke-virtual {v4, v3}, Lcom/umeng/analytics/b/i;->a([B)I

    move-result v4

    .line 147
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 161
    :pswitch_0
    iget-object v2, p0, Lcom/umeng/analytics/b/h;->f:Lcom/umeng/analytics/b/o;

    invoke-virtual {v2}, Lcom/umeng/analytics/b/o;->g()V

    .line 163
    if-eqz v1, :cond_4

    .line 164
    invoke-virtual {v0}, Lcom/umeng/analytics/f;->e()V

    goto :goto_1

    .line 149
    :pswitch_1
    iget-object v2, p0, Lcom/umeng/analytics/b/h;->f:Lcom/umeng/analytics/b/o;

    invoke-virtual {v2}, Lcom/umeng/analytics/b/o;->i()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 150
    iget-object v2, p0, Lcom/umeng/analytics/b/h;->f:Lcom/umeng/analytics/b/o;

    invoke-virtual {v2}, Lcom/umeng/analytics/b/o;->h()V

    .line 153
    :cond_2
    iget-object v2, p0, Lcom/umeng/analytics/b/h;->g:Lcom/umeng/analytics/a/d;

    invoke-virtual {v2}, Lcom/umeng/analytics/a/d;->d()V

    .line 154
    iget-object v2, p0, Lcom/umeng/analytics/b/h;->f:Lcom/umeng/analytics/b/o;

    invoke-virtual {v2}, Lcom/umeng/analytics/b/o;->g()V

    .line 156
    if-eqz v1, :cond_4

    .line 157
    invoke-virtual {v0}, Lcom/umeng/analytics/f;->e()V

    goto :goto_1

    .line 168
    :pswitch_2
    if-nez v1, :cond_3

    invoke-virtual {v0, v3}, Lcom/umeng/analytics/f;->b([B)V

    .line 169
    :cond_3
    const-string v0, "connection error"

    invoke-static {v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    nop

    .line 174
    :cond_4
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(IJ)V
    .locals 1

    .line 178
    invoke-virtual {p0}, Lcom/umeng/analytics/b/h;->e()Landroid/content/Context;

    move-result-object v0

    long-to-int p3, p2

    invoke-direct {p0, v0, p1, p3}, Lcom/umeng/analytics/b/h;->a(Landroid/content/Context;II)V

    .line 179
    return-void
.end method

.method public a(I)Z
    .locals 2

    .line 39
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 40
    invoke-direct {p0}, Lcom/umeng/analytics/b/h;->j()V

    .line 41
    return v1

    .line 44
    :cond_0
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b/h;->c(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    invoke-direct {p0}, Lcom/umeng/analytics/b/h;->j()V

    .line 46
    return v1

    .line 49
    :cond_2
    invoke-super {p0, p1}, Lcom/umeng/analytics/b/e;->a(I)Z

    move-result p1

    return p1
.end method

.method c(I)Z
    .locals 4

    .line 53
    invoke-virtual {p0}, Lcom/umeng/analytics/b/h;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/common/b;->l(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 54
    return v1

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/b/h;->f:Lcom/umeng/analytics/b/o;

    invoke-virtual {v0}, Lcom/umeng/analytics/b/o;->b()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 58
    return v2

    .line 61
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 62
    return v2

    .line 66
    :cond_2
    sget-boolean v0, Lcom/umeng/common/Log;->LOG:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/umeng/analytics/b/h;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/common/b;->w(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    return v2

    .line 71
    :cond_3
    iget-object v0, p0, Lcom/umeng/analytics/b/h;->e:Lcom/umeng/analytics/b/h$e;

    const/4 v3, 0x4

    if-ne p1, v3, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-virtual {v0, v1}, Lcom/umeng/analytics/b/h$e;->a(Z)Z

    move-result p1

    return p1
.end method
