.class Lcom/umeng/analytics/b/a$1;
.super Lcom/umeng/analytics/e;
.source "CacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/analytics/b/a;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/umeng/analytics/b/a;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/b/a;I)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/umeng/analytics/b/a$1;->b:Lcom/umeng/analytics/b/a;

    iput p2, p0, Lcom/umeng/analytics/b/a$1;->a:I

    invoke-direct {p0}, Lcom/umeng/analytics/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/umeng/analytics/b/a$1;->b:Lcom/umeng/analytics/b/a;

    invoke-static {v0}, Lcom/umeng/analytics/b/a;->a(Lcom/umeng/analytics/b/a;)Lcom/umeng/analytics/b/f;

    move-result-object v0

    iget v1, p0, Lcom/umeng/analytics/b/a$1;->a:I

    invoke-interface {v0, v1}, Lcom/umeng/analytics/b/f;->a(I)Z

    .line 65
    return-void
.end method
