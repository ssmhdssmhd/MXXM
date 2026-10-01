.class Lcom/umeng/analytics/b/m$a$1;
.super Lcom/umeng/analytics/e;
.source "PreferenceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/analytics/b/m$a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/b/m$a;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/b/m$a;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/umeng/analytics/b/m$a$1;->a:Lcom/umeng/analytics/b/m$a;

    invoke-direct {p0}, Lcom/umeng/analytics/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/umeng/analytics/b/m$a$1;->a:Lcom/umeng/analytics/b/m$a;

    invoke-static {v0}, Lcom/umeng/analytics/b/m$a;->a(Lcom/umeng/analytics/b/m$a;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 169
    return-void
.end method
