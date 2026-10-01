.class public Lcom/umeng/analytics/a/g;
.super Lcom/umeng/analytics/a/a;
.source "MacTracker.java"


# static fields
.field private static final a:Ljava/lang/String; = "mac"


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 13
    const-string v0, "mac"

    invoke-direct {p0, v0}, Lcom/umeng/analytics/a/a;-><init>(Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lcom/umeng/analytics/a/g;->b:Landroid/content/Context;

    .line 15
    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 1

    .line 19
    nop

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/a/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/common/b;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    .line 28
    :goto_0
    return-object v0
.end method
