.class Lcom/umeng/analytics/b/a$2;
.super Lcom/umeng/analytics/e;
.source "CacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/analytics/b/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/b/a;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/b/a;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/umeng/analytics/b/a$2;->a:Lcom/umeng/analytics/b/a;

    invoke-direct {p0}, Lcom/umeng/analytics/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/umeng/analytics/b/a$2;->a:Lcom/umeng/analytics/b/a;

    invoke-static {v0}, Lcom/umeng/analytics/b/a;->a(Lcom/umeng/analytics/b/a;)Lcom/umeng/analytics/b/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/umeng/analytics/b/f;->a()V

    .line 73
    return-void
.end method
