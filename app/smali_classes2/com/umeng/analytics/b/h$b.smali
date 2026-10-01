.class public Lcom/umeng/analytics/b/h$b;
.super Lcom/umeng/analytics/b/h$e;
.source "NetCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:Lcom/umeng/analytics/b/o;


# direct methods
.method public constructor <init>(Lcom/umeng/analytics/b/o;J)V
    .locals 2

    .line 207
    invoke-direct {p0}, Lcom/umeng/analytics/b/h$e;-><init>()V

    .line 202
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/umeng/analytics/b/h$b;->a:J

    .line 208
    iput-object p1, p0, Lcom/umeng/analytics/b/h$b;->c:Lcom/umeng/analytics/b/o;

    .line 209
    iget-wide v0, p0, Lcom/umeng/analytics/b/h$b;->a:J

    cmp-long p1, p2, v0

    if-gez p1, :cond_0

    iget-wide p2, p0, Lcom/umeng/analytics/b/h$b;->a:J

    :cond_0
    iput-wide p2, p0, Lcom/umeng/analytics/b/h$b;->b:J

    .line 210
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 221
    iget-wide v0, p0, Lcom/umeng/analytics/b/h$b;->b:J

    return-wide v0
.end method

.method public a(Z)Z
    .locals 4

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/umeng/analytics/b/h$b;->c:Lcom/umeng/analytics/b/o;

    iget-wide v2, p1, Lcom/umeng/analytics/b/o;->c:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/umeng/analytics/b/h$b;->b:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    .line 214
    const/4 p1, 0x1

    return p1

    .line 217
    :cond_0
    const/4 p1, 0x0

    return p1
.end method
