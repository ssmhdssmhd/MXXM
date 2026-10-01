.class public Lcom/umeng/analytics/b/e;
.super Lcom/umeng/analytics/b/g;
.source "FileCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/b/e$a;
    }
.end annotation


# instance fields
.field private d:Lcom/umeng/analytics/f;

.field private e:Lcom/umeng/analytics/b/e$a;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b/g;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/b/e;->d:Lcom/umeng/analytics/f;

    .line 36
    iput-object v0, p0, Lcom/umeng/analytics/b/e;->e:Lcom/umeng/analytics/b/e$a;

    .line 38
    const/16 v0, 0xa

    iput v0, p0, Lcom/umeng/analytics/b/e;->f:I

    .line 42
    invoke-static {p1}, Lcom/umeng/analytics/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/f;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b/e;->d:Lcom/umeng/analytics/f;

    .line 43
    new-instance v0, Lcom/umeng/analytics/b/e$a;

    invoke-direct {v0, p0, p1}, Lcom/umeng/analytics/b/e$a;-><init>(Lcom/umeng/analytics/b/e;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/analytics/b/e;->e:Lcom/umeng/analytics/b/e$a;

    .line 44
    return-void
.end method

.method private a(Lcom/umeng/analytics/d/z;Lcom/umeng/analytics/d/z;)V
    .locals 2

    .line 196
    invoke-virtual {p2}, Lcom/umeng/analytics/d/z;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 200
    invoke-virtual {p2}, Lcom/umeng/analytics/d/z;->u()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/umeng/analytics/b/e;->a(Ljava/util/HashMap;Ljava/util/List;)V

    .line 202
    invoke-virtual {p1}, Lcom/umeng/analytics/d/z;->w()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    invoke-virtual {p1}, Lcom/umeng/analytics/d/z;->u()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/umeng/analytics/b/e;->a(Ljava/util/HashMap;Ljava/util/List;)V

    .line 206
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v1}, Lcom/umeng/analytics/d/z;->a(Ljava/util/List;)Lcom/umeng/analytics/d/z;

    .line 209
    :cond_1
    invoke-virtual {p2}, Lcom/umeng/analytics/d/z;->B()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 210
    invoke-virtual {p1}, Lcom/umeng/analytics/d/z;->B()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    invoke-virtual {p1}, Lcom/umeng/analytics/d/z;->z()Ljava/util/List;

    move-result-object v0

    iget-object v1, p2, Lcom/umeng/analytics/d/z;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 213
    :cond_2
    iget-object v0, p2, Lcom/umeng/analytics/d/z;->g:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/d/z;->b(Ljava/util/List;)Lcom/umeng/analytics/d/z;

    .line 217
    :cond_3
    :goto_0
    invoke-virtual {p2}, Lcom/umeng/analytics/d/z;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 218
    iget-object v0, p2, Lcom/umeng/analytics/d/z;->e:Lcom/umeng/analytics/d/b;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/d/z;->a(Lcom/umeng/analytics/d/b;)Lcom/umeng/analytics/d/z;

    .line 221
    :cond_4
    invoke-virtual {p2}, Lcom/umeng/analytics/d/z;->f()Lcom/umeng/analytics/d/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/d/z;->a(Lcom/umeng/analytics/d/c;)Lcom/umeng/analytics/d/z;

    .line 222
    invoke-virtual {p2}, Lcom/umeng/analytics/d/z;->j()Lcom/umeng/analytics/d/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/d/z;->a(Lcom/umeng/analytics/d/e;)Lcom/umeng/analytics/d/z;

    .line 223
    invoke-virtual {p2}, Lcom/umeng/analytics/d/z;->m()Lcom/umeng/analytics/d/r;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/umeng/analytics/d/z;->a(Lcom/umeng/analytics/d/r;)Lcom/umeng/analytics/d/z;

    .line 224
    return-void
.end method

.method private a(Ljava/util/HashMap;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/umeng/analytics/d/p;",
            ">;",
            "Ljava/util/List<",
            "Lcom/umeng/analytics/d/p;",
            ">;)V"
        }
    .end annotation

    .line 233
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/d/p;

    .line 234
    invoke-virtual {v0}, Lcom/umeng/analytics/d/p;->c()Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 237
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 239
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/analytics/d/p;

    .line 241
    invoke-virtual {v1}, Lcom/umeng/analytics/d/p;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/umeng/analytics/d/p;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 242
    invoke-virtual {v1}, Lcom/umeng/analytics/d/p;->i()Ljava/util/List;

    move-result-object v2

    iget-object v3, v0, Lcom/umeng/analytics/d/p;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 243
    :cond_1
    invoke-virtual {v0}, Lcom/umeng/analytics/d/p;->k()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 244
    iget-object v2, v0, Lcom/umeng/analytics/d/p;->b:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/umeng/analytics/d/p;->a(Ljava/util/List;)Lcom/umeng/analytics/d/p;

    .line 247
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/umeng/analytics/d/p;->p()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/umeng/analytics/d/p;->p()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 248
    invoke-virtual {v1}, Lcom/umeng/analytics/d/p;->n()Ljava/util/List;

    move-result-object v2

    iget-object v3, v0, Lcom/umeng/analytics/d/p;->c:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 249
    :cond_3
    invoke-virtual {v0}, Lcom/umeng/analytics/d/p;->p()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 250
    iget-object v2, v0, Lcom/umeng/analytics/d/p;->c:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/umeng/analytics/d/p;->b(Ljava/util/List;)Lcom/umeng/analytics/d/p;

    .line 253
    :cond_4
    :goto_2
    invoke-virtual {v1}, Lcom/umeng/analytics/d/p;->u()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/umeng/analytics/d/p;->u()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 254
    invoke-virtual {v1}, Lcom/umeng/analytics/d/p;->s()Ljava/util/List;

    move-result-object v1

    iget-object v0, v0, Lcom/umeng/analytics/d/p;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 255
    :cond_5
    invoke-virtual {v0}, Lcom/umeng/analytics/d/p;->u()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 256
    iget-object v0, v0, Lcom/umeng/analytics/d/p;->d:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/umeng/analytics/d/p;->c(Ljava/util/List;)Lcom/umeng/analytics/d/p;

    .line 259
    :cond_6
    :goto_3
    goto/16 :goto_0

    .line 260
    :cond_7
    return-void
.end method

.method private a(Lcom/umeng/analytics/d/z;)Z
    .locals 6

    .line 154
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 155
    return v0

    .line 158
    :cond_0
    nop

    .line 160
    invoke-virtual {p1}, Lcom/umeng/analytics/d/z;->r()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 161
    const/4 v1, 0x1

    goto :goto_0

    .line 160
    :cond_1
    const/4 v1, 0x0

    .line 164
    :goto_0
    invoke-virtual {p1}, Lcom/umeng/analytics/d/z;->w()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 165
    invoke-virtual {p1}, Lcom/umeng/analytics/d/z;->u()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/umeng/analytics/d/p;

    .line 166
    invoke-virtual {v4}, Lcom/umeng/analytics/d/p;->f()I

    move-result v5

    add-int/2addr v1, v5

    .line 167
    invoke-virtual {v4}, Lcom/umeng/analytics/d/p;->l()I

    move-result v5

    add-int/2addr v1, v5

    .line 168
    invoke-virtual {v4}, Lcom/umeng/analytics/d/p;->q()I

    move-result v4

    add-int/2addr v1, v4

    .line 169
    goto :goto_1

    .line 172
    :cond_2
    invoke-virtual {p1}, Lcom/umeng/analytics/d/z;->x()I

    move-result p1

    add-int/2addr v1, p1

    .line 174
    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method private b([B)Lcom/umeng/analytics/d/z;
    .locals 3

    .line 263
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 264
    return-object v0

    .line 268
    :cond_0
    :try_start_0
    new-instance v1, Lcom/umeng/analytics/d/z;

    invoke-direct {v1}, Lcom/umeng/analytics/d/z;-><init>()V

    .line 269
    new-instance v2, Lcom/umeng/a/a/a/g;

    invoke-direct {v2}, Lcom/umeng/a/a/a/g;-><init>()V

    invoke-virtual {v2, v1, p1}, Lcom/umeng/a/a/a/g;->a(Lcom/umeng/a/a/a/d;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    return-object v1

    .line 271
    :catch_0
    move-exception p1

    .line 272
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 275
    return-object v0
.end method

.method private b(Lcom/umeng/analytics/d/z;)[B
    .locals 1

    .line 280
    :try_start_0
    new-instance v0, Lcom/umeng/a/a/a/m;

    invoke-direct {v0}, Lcom/umeng/a/a/a/m;-><init>()V

    invoke-virtual {v0, p1}, Lcom/umeng/a/a/a/m;->a(Lcom/umeng/a/a/a/d;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 281
    :catch_0
    move-exception p1

    .line 282
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 285
    const/4 p1, 0x0

    return-object p1
.end method

.method private j()Z
    .locals 2

    .line 79
    invoke-super {p0}, Lcom/umeng/analytics/b/g;->f()I

    move-result v0

    iget v1, p0, Lcom/umeng/analytics/b/e;->f:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private k()Lcom/umeng/analytics/d/z;
    .locals 3

    .line 137
    invoke-virtual {p0}, Lcom/umeng/analytics/b/e;->g()Lcom/umeng/analytics/d/z;

    move-result-object v0

    .line 138
    nop

    .line 141
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/analytics/b/e;->d()[B

    move-result-object v2

    .line 142
    if-nez v2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2}, Lcom/umeng/analytics/b/e;->b([B)Lcom/umeng/analytics/d/z;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    nop

    .line 144
    goto :goto_1

    :catch_0
    move-exception v2

    move-object v2, v1

    .line 146
    :goto_1
    if-eqz v2, :cond_1

    .line 147
    invoke-direct {p0, v0, v2}, Lcom/umeng/analytics/b/e;->a(Lcom/umeng/analytics/d/z;Lcom/umeng/analytics/d/z;)V

    .line 150
    :cond_1
    invoke-direct {p0, v0}, Lcom/umeng/analytics/b/e;->a(Lcom/umeng/analytics/d/z;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 60
    invoke-virtual {p0}, Lcom/umeng/analytics/b/e;->f()I

    move-result v0

    if-lez v0, :cond_2

    .line 62
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/analytics/b/e;->b()[B

    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    iget-object v1, p0, Lcom/umeng/analytics/b/e;->d:Lcom/umeng/analytics/f;

    invoke-virtual {v1, v0}, Lcom/umeng/analytics/f;->a([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_0
    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    instance-of v1, v0, Ljava/lang/OutOfMemoryError;

    if-eqz v1, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/umeng/analytics/b/e;->c()V

    .line 71
    :cond_1
    nop

    .line 72
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    :cond_2
    :goto_0
    return-void
.end method

.method public a([B)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/umeng/analytics/b/e;->d:Lcom/umeng/analytics/f;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/f;->a([B)V

    .line 184
    return-void
.end method

.method public a(I)Z
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/umeng/analytics/b/e;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/umeng/analytics/b/e;->a()V

    .line 49
    const/4 p1, 0x1

    return p1

    .line 52
    :cond_0
    invoke-super {p0, p1}, Lcom/umeng/analytics/b/g;->a(I)Z

    move-result p1

    return p1
.end method

.method public b(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/umeng/analytics/b/e;->f:I

    .line 57
    return-void
.end method

.method protected b()[B
    .locals 6

    .line 84
    const-string v0, "MobclickAgent"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/analytics/b/e;->e()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    const-string v2, "Appkey is missing ,Please check AndroidManifest.xml"

    invoke-static {v0, v2}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-object v1

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/umeng/analytics/b/e;->k()Lcom/umeng/analytics/d/z;

    move-result-object v2

    .line 90
    if-nez v2, :cond_1

    .line 91
    return-object v1

    .line 94
    :cond_1
    sget-boolean v3, Lcom/umeng/common/Log;->LOG:Z

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/umeng/analytics/d/z;->B()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 95
    nop

    .line 96
    invoke-virtual {v2}, Lcom/umeng/analytics/d/z;->z()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/umeng/analytics/d/x;

    .line 97
    invoke-virtual {v5}, Lcom/umeng/analytics/d/x;->p()I

    move-result v5

    if-lez v5, :cond_2

    .line 98
    const/4 v4, 0x1

    .line 100
    :cond_2
    goto :goto_0

    .line 102
    :cond_3
    if-nez v4, :cond_4

    .line 103
    const-string v3, "missing Activities or PageViews"

    invoke-static {v0, v3}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_4
    iget-object v3, p0, Lcom/umeng/analytics/b/e;->e:Lcom/umeng/analytics/b/e$a;

    invoke-virtual {v3}, Lcom/umeng/analytics/b/e$a;->a()Lcom/umeng/analytics/d/c;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/d/z;->a(Lcom/umeng/analytics/d/c;)Lcom/umeng/analytics/d/z;

    .line 108
    iget-object v3, p0, Lcom/umeng/analytics/b/e;->e:Lcom/umeng/analytics/b/e$a;

    invoke-virtual {v3}, Lcom/umeng/analytics/b/e$a;->b()Lcom/umeng/analytics/d/e;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/d/z;->a(Lcom/umeng/analytics/d/e;)Lcom/umeng/analytics/d/z;

    .line 109
    iget-object v3, p0, Lcom/umeng/analytics/b/e;->e:Lcom/umeng/analytics/b/e$a;

    invoke-virtual {v3}, Lcom/umeng/analytics/b/e$a;->c()Lcom/umeng/analytics/d/r;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/d/z;->a(Lcom/umeng/analytics/d/r;)Lcom/umeng/analytics/d/z;

    .line 110
    iget-object v3, p0, Lcom/umeng/analytics/b/e;->e:Lcom/umeng/analytics/b/e$a;

    invoke-virtual {v3}, Lcom/umeng/analytics/b/e$a;->f()Lcom/umeng/analytics/d/d;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/d/z;->a(Lcom/umeng/analytics/d/d;)Lcom/umeng/analytics/d/z;

    .line 111
    iget-object v3, p0, Lcom/umeng/analytics/b/e;->e:Lcom/umeng/analytics/b/e$a;

    invoke-virtual {v3}, Lcom/umeng/analytics/b/e$a;->d()Lcom/umeng/analytics/d/n;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/d/z;->a(Lcom/umeng/analytics/d/n;)Lcom/umeng/analytics/d/z;

    .line 112
    iget-object v3, p0, Lcom/umeng/analytics/b/e;->e:Lcom/umeng/analytics/b/e$a;

    invoke-virtual {v3}, Lcom/umeng/analytics/b/e$a;->e()Lcom/umeng/analytics/d/m;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/d/z;->a(Lcom/umeng/analytics/d/m;)Lcom/umeng/analytics/d/z;

    .line 114
    invoke-virtual {v2}, Lcom/umeng/analytics/d/z;->I()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 116
    nop

    .line 118
    :try_start_1
    invoke-direct {p0, v2}, Lcom/umeng/analytics/b/e;->b(Lcom/umeng/analytics/d/z;)[B

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 120
    :try_start_2
    invoke-virtual {v2}, Lcom/umeng/analytics/d/z;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 124
    goto :goto_2

    .line 122
    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v3, v1

    .line 123
    :goto_1
    :try_start_3
    const-string v2, "Fail to serialize log ..."

    invoke-static {v0, v2}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 126
    :goto_2
    return-object v3

    .line 127
    :catch_2
    move-exception v2

    .line 128
    const-string v3, "Fail to construct message ..."

    invoke-static {v0, v3, v2}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 129
    invoke-virtual {p0}, Lcom/umeng/analytics/b/e;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/f;->c()V

    .line 132
    return-object v1
.end method

.method public c()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/umeng/analytics/b/e;->d:Lcom/umeng/analytics/f;

    invoke-virtual {v0}, Lcom/umeng/analytics/f;->c()V

    .line 179
    iget-object v0, p0, Lcom/umeng/analytics/b/e;->d:Lcom/umeng/analytics/f;

    invoke-virtual {v0}, Lcom/umeng/analytics/f;->e()V

    .line 180
    return-void
.end method

.method public d()[B
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/umeng/analytics/b/e;->d:Lcom/umeng/analytics/f;

    invoke-virtual {v0}, Lcom/umeng/analytics/f;->b()[B

    move-result-object v0

    return-object v0
.end method
