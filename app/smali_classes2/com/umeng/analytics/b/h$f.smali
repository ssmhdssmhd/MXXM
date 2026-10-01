.class public Lcom/umeng/analytics/b/h$f;
.super Lcom/umeng/analytics/b/h$e;
.source "NetCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 245
    invoke-direct {p0}, Lcom/umeng/analytics/b/h$e;-><init>()V

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/b/h$f;->a:Landroid/content/Context;

    .line 246
    iput-object p1, p0, Lcom/umeng/analytics/b/h$f;->a:Landroid/content/Context;

    .line 247
    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 0

    .line 250
    iget-object p1, p0, Lcom/umeng/analytics/b/h$f;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/common/b;->k(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method
