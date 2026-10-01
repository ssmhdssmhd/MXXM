.class public final Lokhttp3/internal/framed/Settings;
.super Ljava/lang/Object;


# static fields
.field static final a:I = 0x10000

.field static final b:I = 0x1

.field static final c:I = 0x1

.field static final d:I = 0x2

.field static final e:I = 0x1

.field static final f:I = 0x1

.field static final g:I = 0x2

.field static final h:I = 0x2

.field static final i:I = 0x3

.field static final j:I = 0x4

.field static final k:I = 0x5

.field static final l:I = 0x5

.field static final m:I = 0x6

.field static final n:I = 0x6

.field static final o:I = 0x7

.field static final p:I = 0x8

.field static final q:I = 0xa

.field static final r:I = 0xa

.field static final s:I = 0x1


# instance fields
.field private t:I

.field private u:I

.field private v:I

.field private final w:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lokhttp3/internal/framed/Settings;->w:[I

    return-void
.end method

.method private a(Z)Z
    .locals 3

    iget v0, p0, Lokhttp3/internal/framed/Settings;->t:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lokhttp3/internal/framed/Settings;->w:[I

    const/4 v0, 0x2

    aget p1, p1, v0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-ne p1, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private e(I)I
    .locals 1

    iget v0, p0, Lokhttp3/internal/framed/Settings;->t:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object p1, p0, Lokhttp3/internal/framed/Settings;->w:[I

    const/4 v0, 0x1

    aget p1, p1, v0

    :cond_0
    return p1
.end method

.method private f(I)I
    .locals 1

    iget v0, p0, Lokhttp3/internal/framed/Settings;->t:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object p1, p0, Lokhttp3/internal/framed/Settings;->w:[I

    const/4 v0, 0x2

    aget p1, p1, v0

    :cond_0
    return p1
.end method

.method private f()Z
    .locals 3

    iget v0, p0, Lokhttp3/internal/framed/Settings;->t:I

    and-int/lit16 v0, v0, 0x400

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->w:[I

    const/16 v2, 0xa

    aget v0, v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private g(I)I
    .locals 1

    iget v0, p0, Lokhttp3/internal/framed/Settings;->t:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object p1, p0, Lokhttp3/internal/framed/Settings;->w:[I

    const/4 v0, 0x3

    aget p1, p1, v0

    :cond_0
    return p1
.end method

.method private h(I)I
    .locals 1

    iget v0, p0, Lokhttp3/internal/framed/Settings;->t:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    iget-object p1, p0, Lokhttp3/internal/framed/Settings;->w:[I

    const/4 v0, 0x5

    aget p1, p1, v0

    :cond_0
    return p1
.end method

.method private i(I)I
    .locals 1

    iget v0, p0, Lokhttp3/internal/framed/Settings;->t:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    iget-object p1, p0, Lokhttp3/internal/framed/Settings;->w:[I

    const/4 v0, 0x6

    aget p1, p1, v0

    :cond_0
    return p1
.end method

.method private j(I)I
    .locals 1

    iget v0, p0, Lokhttp3/internal/framed/Settings;->t:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    iget-object p1, p0, Lokhttp3/internal/framed/Settings;->w:[I

    const/4 v0, 0x6

    aget p1, p1, v0

    :cond_0
    return p1
.end method

.method private k(I)I
    .locals 1

    iget v0, p0, Lokhttp3/internal/framed/Settings;->t:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    iget-object p1, p0, Lokhttp3/internal/framed/Settings;->w:[I

    const/16 v0, 0x8

    aget p1, p1, v0

    :cond_0
    return p1
.end method

.method private l(I)Z
    .locals 2

    const/4 v0, 0x1

    shl-int p1, v0, p1

    iget v1, p0, Lokhttp3/internal/framed/Settings;->u:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private m(I)Z
    .locals 2

    const/4 v0, 0x1

    shl-int p1, v0, p1

    iget v1, p0, Lokhttp3/internal/framed/Settings;->v:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method final a(III)Lokhttp3/internal/framed/Settings;
    .locals 3

    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->w:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    iget v1, p0, Lokhttp3/internal/framed/Settings;->t:I

    or-int/2addr v1, v0

    iput v1, p0, Lokhttp3/internal/framed/Settings;->t:I

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_1

    iget v1, p0, Lokhttp3/internal/framed/Settings;->u:I

    or-int/2addr v1, v0

    goto :goto_0

    :cond_1
    iget v1, p0, Lokhttp3/internal/framed/Settings;->u:I

    xor-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    :goto_0
    iput v1, p0, Lokhttp3/internal/framed/Settings;->u:I

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_2

    iget p2, p0, Lokhttp3/internal/framed/Settings;->v:I

    or-int/2addr p2, v0

    goto :goto_1

    :cond_2
    xor-int/lit8 p2, v0, -0x1

    iget v0, p0, Lokhttp3/internal/framed/Settings;->v:I

    and-int/2addr p2, v0

    :goto_1
    iput p2, p0, Lokhttp3/internal/framed/Settings;->v:I

    iget-object p2, p0, Lokhttp3/internal/framed/Settings;->w:[I

    aput p3, p2, p1

    :goto_2
    return-object p0
.end method

.method final a()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lokhttp3/internal/framed/Settings;->v:I

    iput v0, p0, Lokhttp3/internal/framed/Settings;->u:I

    iput v0, p0, Lokhttp3/internal/framed/Settings;->t:I

    iget-object v1, p0, Lokhttp3/internal/framed/Settings;->w:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method final a(Lokhttp3/internal/framed/Settings;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lokhttp3/internal/framed/Settings;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lokhttp3/internal/framed/Settings;->c(I)I

    move-result v1

    iget-object v2, p1, Lokhttp3/internal/framed/Settings;->w:[I

    aget v2, v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lokhttp3/internal/framed/Settings;->a(III)Lokhttp3/internal/framed/Settings;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method final a(I)Z
    .locals 2

    const/4 v0, 0x1

    shl-int p1, v0, p1

    iget v1, p0, Lokhttp3/internal/framed/Settings;->t:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final b()I
    .locals 1

    iget v0, p0, Lokhttp3/internal/framed/Settings;->t:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method final b(I)I
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->w:[I

    aget p1, v0, p1

    return p1
.end method

.method final c()I
    .locals 2

    iget v0, p0, Lokhttp3/internal/framed/Settings;->t:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->w:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method final c(I)I
    .locals 2

    const/4 v0, 0x1

    shl-int p1, v0, p1

    iget v0, p0, Lokhttp3/internal/framed/Settings;->v:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lokhttp3/internal/framed/Settings;->u:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method final d()I
    .locals 2

    iget v0, p0, Lokhttp3/internal/framed/Settings;->t:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->w:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    :goto_0
    return v0
.end method

.method final d(I)I
    .locals 1

    iget v0, p0, Lokhttp3/internal/framed/Settings;->t:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    iget-object p1, p0, Lokhttp3/internal/framed/Settings;->w:[I

    const/4 v0, 0x5

    aget p1, p1, v0

    :cond_0
    return p1
.end method

.method final e()I
    .locals 2

    iget v0, p0, Lokhttp3/internal/framed/Settings;->t:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->w:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x10000

    :goto_0
    return v0
.end method
