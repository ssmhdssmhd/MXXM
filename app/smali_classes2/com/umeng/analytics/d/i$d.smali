.class Lcom/umeng/analytics/d/i$d;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Lcom/umeng/a/a/a/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/d/i$1;)V
    .locals 0

    .line 542
    invoke-direct {p0}, Lcom/umeng/analytics/d/i$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/umeng/analytics/d/i$c;
    .locals 2

    .line 544
    new-instance v0, Lcom/umeng/analytics/d/i$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/analytics/d/i$c;-><init>(Lcom/umeng/analytics/d/i$1;)V

    return-object v0
.end method

.method public synthetic b()Lcom/umeng/a/a/a/c/a;
    .locals 1

    .line 542
    invoke-virtual {p0}, Lcom/umeng/analytics/d/i$d;->a()Lcom/umeng/analytics/d/i$c;

    move-result-object v0

    return-object v0
.end method
