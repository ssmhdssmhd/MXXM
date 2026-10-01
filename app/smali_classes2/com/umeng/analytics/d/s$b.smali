.class Lcom/umeng/analytics/d/s$b;
.super Ljava/lang/Object;
.source "Page.java"

# interfaces
.implements Lcom/umeng/a/a/a/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/d/s$1;)V
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/umeng/analytics/d/s$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/umeng/analytics/d/s$a;
    .locals 2

    .line 264
    new-instance v0, Lcom/umeng/analytics/d/s$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/analytics/d/s$a;-><init>(Lcom/umeng/analytics/d/s$1;)V

    return-object v0
.end method

.method public synthetic b()Lcom/umeng/a/a/a/c/a;
    .locals 1

    .line 262
    invoke-virtual {p0}, Lcom/umeng/analytics/d/s$b;->a()Lcom/umeng/analytics/d/s$a;

    move-result-object v0

    return-object v0
.end method
