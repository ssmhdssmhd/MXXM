.class Lcom/umeng/analytics/c$4;
.super Lcom/umeng/analytics/e;
.source "InternalAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/analytics/c;->b(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/umeng/analytics/c;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/c;Ljava/lang/String;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/umeng/analytics/c$4;->b:Lcom/umeng/analytics/c;

    iput-object p2, p0, Lcom/umeng/analytics/c$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/umeng/analytics/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 249
    iget-object v0, p0, Lcom/umeng/analytics/c$4;->b:Lcom/umeng/analytics/c;

    invoke-static {v0}, Lcom/umeng/analytics/c;->b(Lcom/umeng/analytics/c;)Lcom/umeng/analytics/b/d;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/c$4;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/umeng/analytics/b/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void
.end method
