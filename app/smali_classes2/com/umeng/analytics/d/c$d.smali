.class Lcom/umeng/analytics/d/c$d;
.super Ljava/lang/Object;
.source "AppInfo.java"

# interfaces
.implements Lcom/umeng/a/a/a/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 818
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/d/c$1;)V
    .locals 0

    .line 818
    invoke-direct {p0}, Lcom/umeng/analytics/d/c$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/umeng/analytics/d/c$c;
    .locals 2

    .line 820
    new-instance v0, Lcom/umeng/analytics/d/c$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/analytics/d/c$c;-><init>(Lcom/umeng/analytics/d/c$1;)V

    return-object v0
.end method

.method public synthetic b()Lcom/umeng/a/a/a/c/a;
    .locals 1

    .line 818
    invoke-virtual {p0}, Lcom/umeng/analytics/d/c$d;->a()Lcom/umeng/analytics/d/c$c;

    move-result-object v0

    return-object v0
.end method
