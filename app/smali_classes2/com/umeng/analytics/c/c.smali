.class public Lcom/umeng/analytics/c/c;
.super Lcom/umeng/analytics/d/g;
.source "UError.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Lcom/umeng/analytics/d/g;-><init>()V

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/umeng/analytics/c/c;->a(J)Lcom/umeng/analytics/d/g;

    .line 19
    sget-object v0, Lcom/umeng/analytics/d/h;->a:Lcom/umeng/analytics/d/h;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/c/c;->a(Lcom/umeng/analytics/d/h;)Lcom/umeng/analytics/d/g;

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/umeng/analytics/c/c;-><init>()V

    .line 24
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/c/c;->a(Ljava/lang/String;)Lcom/umeng/analytics/d/g;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/umeng/analytics/c/c;-><init>()V

    .line 29
    invoke-direct {p0, p1}, Lcom/umeng/analytics/c/c;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/c/c;->a(Ljava/lang/String;)Lcom/umeng/analytics/d/g;

    .line 30
    return-void
.end method

.method private a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    .line 38
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 39
    return-object v0

    .line 42
    :cond_0
    nop

    .line 45
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 46
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 47
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 48
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 49
    :goto_0
    if-eqz p1, :cond_1

    .line 50
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 51
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 55
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_1

    .line 56
    :catch_0
    move-exception p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    :goto_1
    return-object v0
.end method


# virtual methods
.method public a(Z)Lcom/umeng/analytics/c/c;
    .locals 0

    .line 33
    if-eqz p1, :cond_0

    sget-object p1, Lcom/umeng/analytics/d/h;->a:Lcom/umeng/analytics/d/h;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/umeng/analytics/d/h;->b:Lcom/umeng/analytics/d/h;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/c/c;->a(Lcom/umeng/analytics/d/h;)Lcom/umeng/analytics/d/g;

    .line 34
    return-object p0
.end method
