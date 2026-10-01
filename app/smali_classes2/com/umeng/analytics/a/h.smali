.class public Lcom/umeng/analytics/a/h;
.super Ljava/lang/Object;
.source "SDKContext.java"


# static fields
.field private static a:Lcom/umeng/analytics/a/d;

.field private static b:Lcom/umeng/analytics/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/analytics/a/h;->a:Lcom/umeng/analytics/a/d;

    .line 7
    sput-object v0, Lcom/umeng/analytics/a/h;->b:Lcom/umeng/analytics/a/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/analytics/a/d;
    .locals 2

    .line 11
    sget-object v0, Lcom/umeng/analytics/a/h;->a:Lcom/umeng/analytics/a/d;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lcom/umeng/analytics/a/d;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/a/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/umeng/analytics/a/h;->a:Lcom/umeng/analytics/a/d;

    .line 14
    sget-object v0, Lcom/umeng/analytics/a/h;->a:Lcom/umeng/analytics/a/d;

    new-instance v1, Lcom/umeng/analytics/a/e;

    invoke-direct {v1, p0}, Lcom/umeng/analytics/a/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/a/d;->a(Lcom/umeng/analytics/a/a;)V

    .line 15
    sget-object v0, Lcom/umeng/analytics/a/h;->a:Lcom/umeng/analytics/a/d;

    new-instance v1, Lcom/umeng/analytics/a/g;

    invoke-direct {v1, p0}, Lcom/umeng/analytics/a/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/a/d;->a(Lcom/umeng/analytics/a/a;)V

    .line 16
    sget-object v0, Lcom/umeng/analytics/a/h;->a:Lcom/umeng/analytics/a/d;

    new-instance v1, Lcom/umeng/analytics/a/b;

    invoke-direct {v1, p0}, Lcom/umeng/analytics/a/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/a/d;->a(Lcom/umeng/analytics/a/a;)V

    .line 17
    sget-object v0, Lcom/umeng/analytics/a/h;->a:Lcom/umeng/analytics/a/d;

    new-instance v1, Lcom/umeng/analytics/a/i;

    invoke-direct {v1, p0}, Lcom/umeng/analytics/a/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/a/d;->a(Lcom/umeng/analytics/a/a;)V

    .line 19
    sget-object p0, Lcom/umeng/analytics/a/h;->a:Lcom/umeng/analytics/a/d;

    invoke-virtual {p0}, Lcom/umeng/analytics/a/d;->e()V

    .line 22
    :cond_0
    sget-object p0, Lcom/umeng/analytics/a/h;->a:Lcom/umeng/analytics/a/d;

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Lcom/umeng/analytics/a/f;
    .locals 1

    .line 26
    sget-object v0, Lcom/umeng/analytics/a/h;->b:Lcom/umeng/analytics/a/f;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/umeng/analytics/a/f;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/a/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/umeng/analytics/a/h;->b:Lcom/umeng/analytics/a/f;

    .line 28
    sget-object p0, Lcom/umeng/analytics/a/h;->b:Lcom/umeng/analytics/a/f;

    invoke-virtual {p0}, Lcom/umeng/analytics/a/f;->b()V

    .line 31
    :cond_0
    sget-object p0, Lcom/umeng/analytics/a/h;->b:Lcom/umeng/analytics/a/f;

    return-object p0
.end method
