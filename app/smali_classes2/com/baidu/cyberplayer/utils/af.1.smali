.class public Lcom/baidu/cyberplayer/utils/af;
.super Lcom/baidu/cyberplayer/utils/bX;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/cyberplayer/utils/ah;

.field private a:Lcom/baidu/cyberplayer/utils/cj;

.field private a:Ljava/lang/Object;

.field private b:Lcom/baidu/cyberplayer/utils/cj;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 100
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/bX;-><init>()V

    .line 420
    new-instance v0, Lcom/baidu/cyberplayer/utils/ah;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/ah;-><init>()V

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/af;->a:Lcom/baidu/cyberplayer/utils/ah;

    .line 466
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/af;->a:Ljava/lang/Object;

    .line 101
    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/af;->b:Lcom/baidu/cyberplayer/utils/cj;

    .line 102
    new-instance v0, Lcom/baidu/cyberplayer/utils/cj;

    const-string/jumbo v1, "stateVariable"

    invoke-direct {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/af;->a:Lcom/baidu/cyberplayer/utils/cj;

    .line 103
    return-void
.end method

.method public constructor <init>(Lcom/baidu/cyberplayer/utils/cj;Lcom/baidu/cyberplayer/utils/cj;)V
    .locals 1

    .line 106
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/bX;-><init>()V

    .line 420
    new-instance v0, Lcom/baidu/cyberplayer/utils/ah;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/ah;-><init>()V

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/af;->a:Lcom/baidu/cyberplayer/utils/ah;

    .line 466
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/af;->a:Ljava/lang/Object;

    .line 107
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/af;->b:Lcom/baidu/cyberplayer/utils/cj;

    .line 108
    iput-object p2, p0, Lcom/baidu/cyberplayer/utils/af;->a:Lcom/baidu/cyberplayer/utils/cj;

    .line 109
    return-void
.end method

.method public static a(Lcom/baidu/cyberplayer/utils/cj;)Z
    .locals 1

    .line 117
    const-string/jumbo v0, "stateVariable"

    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/cj;->k()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a()Lcom/baidu/cyberplayer/utils/W;
    .locals 2

    .line 305
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/af;->b()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    const-string v1, "allowedValueRange"

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    .line 306
    if-nez v0, :cond_0

    .line 307
    const/4 v0, 0x0

    return-object v0

    .line 308
    :cond_0
    new-instance v1, Lcom/baidu/cyberplayer/utils/W;

    invoke-direct {v1, v0}, Lcom/baidu/cyberplayer/utils/W;-><init>(Lcom/baidu/cyberplayer/utils/cj;)V

    return-object v1
.end method

.method public a()Lcom/baidu/cyberplayer/utils/ac;
    .locals 2

    .line 84
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/af;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    .line 85
    if-nez v0, :cond_0

    .line 86
    const/4 v0, 0x0

    return-object v0

    .line 87
    :cond_0
    new-instance v1, Lcom/baidu/cyberplayer/utils/ac;

    invoke-direct {v1, v0}, Lcom/baidu/cyberplayer/utils/ac;-><init>(Lcom/baidu/cyberplayer/utils/cj;)V

    return-object v1
.end method

.method public a()Lcom/baidu/cyberplayer/utils/ah;
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/af;->a:Lcom/baidu/cyberplayer/utils/ah;

    return-object v0
.end method

.method public a()Lcom/baidu/cyberplayer/utils/an;
    .locals 1

    .line 345
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/af;->a()Lcom/baidu/cyberplayer/utils/bZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bZ;->a()Lcom/baidu/cyberplayer/utils/an;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/baidu/cyberplayer/utils/bZ;
    .locals 2

    .line 193
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/af;->b()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/cj;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/cyberplayer/utils/bZ;

    .line 195
    if-nez v1, :cond_0

    .line 196
    new-instance v1, Lcom/baidu/cyberplayer/utils/bZ;

    invoke-direct {v1}, Lcom/baidu/cyberplayer/utils/bZ;-><init>()V

    .line 197
    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->a(Ljava/lang/Object;)V

    .line 198
    invoke-virtual {v1, v0}, Lcom/baidu/cyberplayer/utils/bZ;->a(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 200
    :cond_0
    return-object v1
.end method

.method public a()Lcom/baidu/cyberplayer/utils/cj;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/af;->b:Lcom/baidu/cyberplayer/utils/cj;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .line 133
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/af;->b()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 228
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/af;->c(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/af;->a:Lcom/baidu/cyberplayer/utils/ah;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/ah;->a(I)V

    .line 425
    iget-object p1, p0, Lcom/baidu/cyberplayer/utils/af;->a:Lcom/baidu/cyberplayer/utils/ah;

    invoke-virtual {p1, p2}, Lcom/baidu/cyberplayer/utils/ah;->a(Ljava/lang/String;)V

    .line 426
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/af;)V
    .locals 1

    .line 181
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/af;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/af;->a(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/af;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/af;->c(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/af;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/af;->b(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/af;->a()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/af;->a(Z)V

    .line 185
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/an;)V
    .locals 1

    .line 350
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/af;->a()Lcom/baidu/cyberplayer/utils/bZ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/bZ;->a(Lcom/baidu/cyberplayer/utils/an;)V

    .line 351
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 128
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/af;->b()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/cyberplayer/utils/cj;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 162
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/af;->b()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string/jumbo p1, "yes"

    goto :goto_0

    :cond_0
    const-string p1, "no"

    :goto_0
    const-string v1, "sendEvents"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/cyberplayer/utils/cj;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public a()Z
    .locals 3

    .line 167
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/af;->b()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    const-string v1, "sendEvents"

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 169
    return v1

    .line 170
    :cond_0
    const-string/jumbo v2, "yes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 171
    return v2

    .line 172
    :cond_1
    return v1
.end method

.method public a(Lcom/baidu/cyberplayer/utils/ao;)Z
    .locals 4

    .line 355
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/af;->a()Lcom/baidu/cyberplayer/utils/an;

    move-result-object v0

    .line 356
    if-nez v0, :cond_0

    .line 357
    const/4 p1, 0x0

    return p1

    .line 358
    :cond_0
    new-instance v1, Lcom/baidu/cyberplayer/utils/ap;

    invoke-direct {v1}, Lcom/baidu/cyberplayer/utils/ap;-><init>()V

    .line 359
    new-instance v2, Lcom/baidu/cyberplayer/utils/af;

    invoke-direct {v2}, Lcom/baidu/cyberplayer/utils/af;-><init>()V

    .line 360
    invoke-virtual {v2, p0}, Lcom/baidu/cyberplayer/utils/af;->a(Lcom/baidu/cyberplayer/utils/af;)V

    .line 361
    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/baidu/cyberplayer/utils/af;->c(Ljava/lang/String;)V

    .line 362
    const/16 v3, 0x194

    invoke-virtual {v2, v3}, Lcom/baidu/cyberplayer/utils/af;->b(I)V

    .line 363
    invoke-interface {v0, v2}, Lcom/baidu/cyberplayer/utils/an;->a(Lcom/baidu/cyberplayer/utils/af;)Z

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 364
    invoke-virtual {v1, v2}, Lcom/baidu/cyberplayer/utils/ap;->a(Lcom/baidu/cyberplayer/utils/af;)V

    goto :goto_0

    .line 367
    :cond_1
    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/af;->a()Lcom/baidu/cyberplayer/utils/ah;

    move-result-object v0

    .line 368
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ah;->a()I

    move-result v2

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ah;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/baidu/cyberplayer/utils/ap;->a(ILjava/lang/String;)V

    .line 370
    :goto_0
    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/ao;->a(Lcom/baidu/cyberplayer/utils/I;)Z

    .line 371
    return v3
.end method

.method public b()Lcom/baidu/cyberplayer/utils/cj;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/af;->a:Lcom/baidu/cyberplayer/utils/cj;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 149
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/af;->b()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    const-string v1, "dataType"

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 1

    .line 430
    invoke-static {p1}, Lcom/baidu/cyberplayer/utils/ah;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/cyberplayer/utils/af;->a(ILjava/lang/String;)V

    .line 431
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 144
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/af;->b()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    const-string v1, "dataType"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/cyberplayer/utils/cj;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 238
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/af;->a()Lcom/baidu/cyberplayer/utils/bZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bZ;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 210
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/af;->a()Lcom/baidu/cyberplayer/utils/bZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bZ;->a()Ljava/lang/String;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 213
    return-void

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/af;->a()Lcom/baidu/cyberplayer/utils/bZ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/bZ;->a(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/af;->a()Lcom/baidu/cyberplayer/utils/ac;

    move-result-object p1

    .line 219
    if-nez p1, :cond_1

    .line 220
    return-void

    .line 221
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/af;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 222
    return-void

    .line 223
    :cond_2
    invoke-virtual {p1, p0}, Lcom/baidu/cyberplayer/utils/ac;->a(Lcom/baidu/cyberplayer/utils/af;)V

    .line 224
    return-void
.end method
