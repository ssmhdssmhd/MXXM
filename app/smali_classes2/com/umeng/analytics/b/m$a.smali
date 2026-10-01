.class public Lcom/umeng/analytics/b/m$a;
.super Ljava/lang/Object;
.source "PreferenceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/b/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/umeng/analytics/b/m$a;->a:Landroid/content/SharedPreferences$Editor;

    .line 99
    return-void
.end method

.method static synthetic a(Lcom/umeng/analytics/b/m$a;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/umeng/analytics/b/m$a;->a:Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/umeng/analytics/b/m$a;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/umeng/analytics/b/m$a;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 151
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/analytics/b/m$a;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/umeng/analytics/b/m$a;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 156
    return-object p0
.end method

.method public a(Ljava/lang/String;F)Lcom/umeng/analytics/b/m$a;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/umeng/analytics/b/m$a;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 118
    return-object p0
.end method

.method public a(Ljava/lang/String;I)Lcom/umeng/analytics/b/m$a;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/umeng/analytics/b/m$a;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 108
    return-object p0
.end method

.method public a(Ljava/lang/String;J)Lcom/umeng/analytics/b/m$a;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/umeng/analytics/b/m$a;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 113
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/analytics/b/m$a;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/umeng/analytics/b/m$a;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 103
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)Lcom/umeng/analytics/b/m$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/umeng/analytics/b/m$a;"
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    .line 135
    if-lez p2, :cond_1

    .line 136
    add-int/lit8 v1, p2, -0x2

    invoke-virtual {v0, v1, p2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 139
    :cond_1
    iget-object p2, p0, Lcom/umeng/analytics/b/m$a;->a:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 140
    return-object p0
.end method

.method public a(Ljava/lang/String;Z)Lcom/umeng/analytics/b/m$a;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/umeng/analytics/b/m$a;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 123
    return-object p0
.end method

.method public a(Ljava/lang/String;[B)Lcom/umeng/analytics/b/m$a;
    .locals 1

    .line 144
    invoke-static {p2}, Lcom/umeng/analytics/b/j;->a([B)Ljava/lang/String;

    move-result-object p2

    .line 145
    iget-object v0, p0, Lcom/umeng/analytics/b/m$a;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 146
    return-object p0
.end method

.method public b()V
    .locals 1

    .line 161
    nop

    .line 162
    iget-object v0, p0, Lcom/umeng/analytics/b/m$a;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 173
    return-void
.end method

.method public c()Z
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/umeng/analytics/b/m$a;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method
