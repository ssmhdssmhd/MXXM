.class public Lcom/umeng/analytics/b/h$d;
.super Lcom/umeng/analytics/b/h$e;
.source "NetCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private a:J

.field private b:Lcom/umeng/analytics/b/o;


# direct methods
.method public constructor <init>(Lcom/umeng/analytics/b/o;)V
    .locals 2

    .line 229
    invoke-direct {p0}, Lcom/umeng/analytics/b/h$e;-><init>()V

    .line 226
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/umeng/analytics/b/h$d;->a:J

    .line 230
    iput-object p1, p0, Lcom/umeng/analytics/b/h$d;->b:Lcom/umeng/analytics/b/o;

    .line 231
    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 4

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/umeng/analytics/b/h$d;->b:Lcom/umeng/analytics/b/o;

    iget-wide v2, p1, Lcom/umeng/analytics/b/o;->c:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/umeng/analytics/b/h$d;->a:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    .line 235
    const/4 p1, 0x1

    return p1

    .line 238
    :cond_0
    const/4 p1, 0x0

    return p1
.end method
