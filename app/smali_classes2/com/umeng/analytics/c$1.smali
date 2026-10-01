.class Lcom/umeng/analytics/c$1;
.super Lcom/umeng/analytics/e;
.source "InternalAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/analytics/c;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/umeng/analytics/c;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/c;Landroid/content/Context;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/umeng/analytics/c$1;->b:Lcom/umeng/analytics/c;

    iput-object p2, p0, Lcom/umeng/analytics/c$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/umeng/analytics/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/umeng/analytics/c$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/b/a;->a(Landroid/content/Context;)Lcom/umeng/analytics/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/b/a;->a()Lcom/umeng/analytics/b/f;

    move-result-object v0

    .line 98
    instance-of v1, v0, Lcom/umeng/analytics/onlineconfig/c;

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/umeng/analytics/c$1;->b:Lcom/umeng/analytics/c;

    invoke-static {v1}, Lcom/umeng/analytics/c;->a(Lcom/umeng/analytics/c;)Lcom/umeng/analytics/onlineconfig/a;

    move-result-object v1

    check-cast v0, Lcom/umeng/analytics/onlineconfig/c;

    invoke-virtual {v1, v0}, Lcom/umeng/analytics/onlineconfig/a;->a(Lcom/umeng/analytics/onlineconfig/c;)V

    .line 101
    :cond_0
    return-void
.end method
