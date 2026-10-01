.class public Lcom/umeng/analytics/b/c;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private b:Lcom/umeng/analytics/b/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 18
    return-void

    .line 21
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b/c;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 22
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 23
    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 1

    .line 39
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->CATCH_EXCEPTION:Z

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/umeng/analytics/b/c;->b:Lcom/umeng/analytics/b/k;

    invoke-interface {v0, p1}, Lcom/umeng/analytics/b/k;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/umeng/analytics/b/c;->b:Lcom/umeng/analytics/b/k;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/umeng/analytics/b/k;->a(Ljava/lang/Throwable;)V

    .line 44
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/analytics/b/k;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/umeng/analytics/b/c;->b:Lcom/umeng/analytics/b/k;

    .line 27
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .line 31
    invoke-direct {p0, p2}, Lcom/umeng/analytics/b/c;->a(Ljava/lang/Throwable;)V

    .line 33
    iget-object v0, p0, Lcom/umeng/analytics/b/c;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/b/c;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 34
    iget-object v0, p0, Lcom/umeng/analytics/b/c;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 36
    :cond_0
    return-void
.end method
