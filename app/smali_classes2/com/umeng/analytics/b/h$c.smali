.class public Lcom/umeng/analytics/b/h$c;
.super Lcom/umeng/analytics/b/h$e;
.source "NetCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final a:I

.field private b:Lcom/umeng/analytics/b/g;


# direct methods
.method public constructor <init>(Lcom/umeng/analytics/b/g;I)V
    .locals 0

    .line 258
    invoke-direct {p0}, Lcom/umeng/analytics/b/h$e;-><init>()V

    .line 259
    iput p2, p0, Lcom/umeng/analytics/b/h$c;->a:I

    .line 260
    iput-object p1, p0, Lcom/umeng/analytics/b/h$c;->b:Lcom/umeng/analytics/b/g;

    .line 261
    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 1

    .line 264
    iget-object p1, p0, Lcom/umeng/analytics/b/h$c;->b:Lcom/umeng/analytics/b/g;

    invoke-virtual {p1}, Lcom/umeng/analytics/b/g;->f()I

    move-result p1

    iget v0, p0, Lcom/umeng/analytics/b/h$c;->a:I

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
