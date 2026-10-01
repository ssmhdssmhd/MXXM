.class final Lokhttp3/internal/framed/m$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# static fields
.field private static final g:I = 0x1000

.field private static final h:I = 0x4000


# instance fields
.field a:I

.field b:I

.field c:[Lokhttp3/internal/framed/Header;

.field d:I

.field e:I

.field f:I

.field private final i:Lokio/Buffer;

.field private j:I

.field private k:Z


# direct methods
.method constructor <init>(Lokio/Buffer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/internal/framed/m$b;-><init>(Lokio/Buffer;B)V

    return-void
.end method

.method private constructor <init>(Lokio/Buffer;B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p2, 0x7fffffff

    iput p2, p0, Lokhttp3/internal/framed/m$b;->j:I

    const/16 p2, 0x8

    new-array p2, p2, [Lokhttp3/internal/framed/Header;

    iput-object p2, p0, Lokhttp3/internal/framed/m$b;->c:[Lokhttp3/internal/framed/Header;

    iget-object p2, p0, Lokhttp3/internal/framed/m$b;->c:[Lokhttp3/internal/framed/Header;

    array-length p2, p2

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lokhttp3/internal/framed/m$b;->d:I

    const/4 p2, 0x0

    iput p2, p0, Lokhttp3/internal/framed/m$b;->e:I

    iput p2, p0, Lokhttp3/internal/framed/m$b;->f:I

    const/16 p2, 0x1000

    iput p2, p0, Lokhttp3/internal/framed/m$b;->a:I

    iput p2, p0, Lokhttp3/internal/framed/m$b;->b:I

    iput-object p1, p0, Lokhttp3/internal/framed/m$b;->i:Lokio/Buffer;

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lokhttp3/internal/framed/m$b;->c:[Lokhttp3/internal/framed/Header;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lokhttp3/internal/framed/m$b;->c:[Lokhttp3/internal/framed/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lokhttp3/internal/framed/m$b;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lokhttp3/internal/framed/m$b;->e:I

    iput v0, p0, Lokhttp3/internal/framed/m$b;->f:I

    return-void
.end method

.method private a(III)V
    .locals 1

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lokhttp3/internal/framed/m$b;->i:Lokio/Buffer;

    or-int/2addr p1, p3

    :goto_0
    invoke-virtual {p2, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/framed/m$b;->i:Lokio/Buffer;

    or-int/2addr p3, p2

    invoke-virtual {v0, p3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    sub-int/2addr p1, p2

    :goto_1
    const/16 p2, 0x80

    if-lt p1, p2, :cond_1

    iget-object p3, p0, Lokhttp3/internal/framed/m$b;->i:Lokio/Buffer;

    and-int/lit8 v0, p1, 0x7f

    or-int/2addr p2, v0

    invoke-virtual {p3, p2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lokhttp3/internal/framed/m$b;->i:Lokio/Buffer;

    goto :goto_0

    :goto_2
    return-void
.end method

.method private a(Lokhttp3/internal/framed/Header;)V
    .locals 6

    iget v0, p1, Lokhttp3/internal/framed/Header;->a:I

    iget v1, p0, Lokhttp3/internal/framed/m$b;->b:I

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lokhttp3/internal/framed/m$b;->a()V

    goto :goto_0

    :cond_0
    iget v1, p0, Lokhttp3/internal/framed/m$b;->f:I

    add-int/2addr v1, v0

    iget v2, p0, Lokhttp3/internal/framed/m$b;->b:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lokhttp3/internal/framed/m$b;->b(I)I

    iget v1, p0, Lokhttp3/internal/framed/m$b;->e:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lokhttp3/internal/framed/m$b;->c:[Lokhttp3/internal/framed/Header;

    array-length v2, v2

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lokhttp3/internal/framed/m$b;->c:[Lokhttp3/internal/framed/Header;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lokhttp3/internal/framed/Header;

    iget-object v2, p0, Lokhttp3/internal/framed/m$b;->c:[Lokhttp3/internal/framed/Header;

    iget-object v3, p0, Lokhttp3/internal/framed/m$b;->c:[Lokhttp3/internal/framed/Header;

    array-length v3, v3

    iget-object v4, p0, Lokhttp3/internal/framed/m$b;->c:[Lokhttp3/internal/framed/Header;

    array-length v4, v4

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lokhttp3/internal/framed/m$b;->c:[Lokhttp3/internal/framed/Header;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lokhttp3/internal/framed/m$b;->d:I

    iput-object v1, p0, Lokhttp3/internal/framed/m$b;->c:[Lokhttp3/internal/framed/Header;

    :cond_1
    iget v1, p0, Lokhttp3/internal/framed/m$b;->d:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lokhttp3/internal/framed/m$b;->d:I

    iget-object v2, p0, Lokhttp3/internal/framed/m$b;->c:[Lokhttp3/internal/framed/Header;

    aput-object p1, v2, v1

    iget p1, p0, Lokhttp3/internal/framed/m$b;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lokhttp3/internal/framed/m$b;->e:I

    iget p1, p0, Lokhttp3/internal/framed/m$b;->f:I

    add-int/2addr v0, p1

    iput v0, p0, Lokhttp3/internal/framed/m$b;->f:I

    :goto_0
    return-void
.end method

.method private a(Lokio/ByteString;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    const/16 v1, 0x7f

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lokhttp3/internal/framed/m$b;->a(III)V

    iget-object v0, p0, Lokhttp3/internal/framed/m$b;->i:Lokio/Buffer;

    invoke-virtual {v0, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    return-void
.end method

.method private b(I)I
    .locals 5

    const/4 v0, 0x0

    if-lez p1, :cond_1

    iget-object v1, p0, Lokhttp3/internal/framed/m$b;->c:[Lokhttp3/internal/framed/Header;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    iget v2, p0, Lokhttp3/internal/framed/m$b;->d:I

    if-lt v1, v2, :cond_0

    if-lez p1, :cond_0

    iget-object v2, p0, Lokhttp3/internal/framed/m$b;->c:[Lokhttp3/internal/framed/Header;

    aget-object v2, v2, v1

    iget v2, v2, Lokhttp3/internal/framed/Header;->a:I

    sub-int/2addr p1, v2

    iget v2, p0, Lokhttp3/internal/framed/m$b;->f:I

    iget-object v3, p0, Lokhttp3/internal/framed/m$b;->c:[Lokhttp3/internal/framed/Header;

    aget-object v3, v3, v1

    iget v3, v3, Lokhttp3/internal/framed/Header;->a:I

    sub-int/2addr v2, v3

    iput v2, p0, Lokhttp3/internal/framed/m$b;->f:I

    iget v2, p0, Lokhttp3/internal/framed/m$b;->e:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lokhttp3/internal/framed/m$b;->e:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lokhttp3/internal/framed/m$b;->c:[Lokhttp3/internal/framed/Header;

    iget v1, p0, Lokhttp3/internal/framed/m$b;->d:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lokhttp3/internal/framed/m$b;->c:[Lokhttp3/internal/framed/Header;

    iget v3, p0, Lokhttp3/internal/framed/m$b;->d:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v0

    iget v4, p0, Lokhttp3/internal/framed/m$b;->e:I

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lokhttp3/internal/framed/m$b;->c:[Lokhttp3/internal/framed/Header;

    iget v1, p0, Lokhttp3/internal/framed/m$b;->d:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lokhttp3/internal/framed/m$b;->d:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget p1, p0, Lokhttp3/internal/framed/m$b;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lokhttp3/internal/framed/m$b;->d:I

    :cond_1
    return v0
.end method

.method private b()V
    .locals 2

    iget v0, p0, Lokhttp3/internal/framed/m$b;->b:I

    iget v1, p0, Lokhttp3/internal/framed/m$b;->f:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lokhttp3/internal/framed/m$b;->b:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lokhttp3/internal/framed/m$b;->a()V

    goto :goto_0

    :cond_0
    iget v0, p0, Lokhttp3/internal/framed/m$b;->f:I

    iget v1, p0, Lokhttp3/internal/framed/m$b;->b:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lokhttp3/internal/framed/m$b;->b(I)I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method final a(I)V
    .locals 1

    iput p1, p0, Lokhttp3/internal/framed/m$b;->a:I

    const/16 v0, 0x4000

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v0, p0, Lokhttp3/internal/framed/m$b;->b:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lokhttp3/internal/framed/m$b;->b:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lokhttp3/internal/framed/m$b;->j:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lokhttp3/internal/framed/m$b;->j:I

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/framed/m$b;->k:Z

    iput p1, p0, Lokhttp3/internal/framed/m$b;->b:I

    iget p1, p0, Lokhttp3/internal/framed/m$b;->b:I

    iget v0, p0, Lokhttp3/internal/framed/m$b;->f:I

    if-ge p1, v0, :cond_3

    iget p1, p0, Lokhttp3/internal/framed/m$b;->b:I

    if-nez p1, :cond_2

    invoke-direct {p0}, Lokhttp3/internal/framed/m$b;->a()V

    goto :goto_0

    :cond_2
    iget p1, p0, Lokhttp3/internal/framed/m$b;->f:I

    iget v0, p0, Lokhttp3/internal/framed/m$b;->b:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Lokhttp3/internal/framed/m$b;->b(I)I

    :cond_3
    :goto_0
    return-void
.end method

.method final a(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lokhttp3/internal/framed/m$b;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lokhttp3/internal/framed/m$b;->j:I

    iget v2, p0, Lokhttp3/internal/framed/m$b;->b:I

    const/16 v3, 0x20

    const/16 v4, 0x1f

    if-ge v0, v2, :cond_0

    iget v0, p0, Lokhttp3/internal/framed/m$b;->j:I

    invoke-direct {p0, v0, v4, v3}, Lokhttp3/internal/framed/m$b;->a(III)V

    :cond_0
    iput-boolean v1, p0, Lokhttp3/internal/framed/m$b;->k:Z

    const v0, 0x7fffffff

    iput v0, p0, Lokhttp3/internal/framed/m$b;->j:I

    iget v0, p0, Lokhttp3/internal/framed/m$b;->b:I

    invoke-direct {p0, v0, v4, v3}, Lokhttp3/internal/framed/m$b;->a(III)V

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_6

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/internal/framed/Header;

    iget-object v4, v3, Lokhttp3/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v4}, Lokio/ByteString;->toAsciiLowercase()Lokio/ByteString;

    move-result-object v4

    iget-object v5, v3, Lokhttp3/internal/framed/Header;->value:Lokio/ByteString;

    invoke-static {}, Lokhttp3/internal/framed/m;->b()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0xf

    invoke-direct {p0, v3, v4, v1}, Lokhttp3/internal/framed/m$b;->a(III)V

    invoke-direct {p0, v5}, Lokhttp3/internal/framed/m$b;->a(Lokio/ByteString;)V

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lokhttp3/internal/framed/m$b;->c:[Lokhttp3/internal/framed/Header;

    invoke-static {v6, v3}, Lokhttp3/internal/Util;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    iget v3, p0, Lokhttp3/internal/framed/m$b;->d:I

    sub-int/2addr v6, v3

    invoke-static {}, Lokhttp3/internal/framed/m;->a()[Lokhttp3/internal/framed/Header;

    move-result-object v3

    array-length v3, v3

    add-int/2addr v6, v3

    const/16 v3, 0x7f

    const/16 v4, 0x80

    invoke-direct {p0, v6, v3, v4}, Lokhttp3/internal/framed/m$b;->a(III)V

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lokhttp3/internal/framed/m$b;->i:Lokio/Buffer;

    const/16 v7, 0x40

    invoke-virtual {v6, v7}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    invoke-direct {p0, v4}, Lokhttp3/internal/framed/m$b;->a(Lokio/ByteString;)V

    invoke-direct {p0, v5}, Lokhttp3/internal/framed/m$b;->a(Lokio/ByteString;)V

    iget v4, v3, Lokhttp3/internal/framed/Header;->a:I

    iget v5, p0, Lokhttp3/internal/framed/m$b;->b:I

    if-le v4, v5, :cond_4

    invoke-direct {p0}, Lokhttp3/internal/framed/m$b;->a()V

    goto :goto_1

    :cond_4
    iget v5, p0, Lokhttp3/internal/framed/m$b;->f:I

    add-int/2addr v5, v4

    iget v6, p0, Lokhttp3/internal/framed/m$b;->b:I

    sub-int/2addr v5, v6

    invoke-direct {p0, v5}, Lokhttp3/internal/framed/m$b;->b(I)I

    iget v5, p0, Lokhttp3/internal/framed/m$b;->e:I

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lokhttp3/internal/framed/m$b;->c:[Lokhttp3/internal/framed/Header;

    array-length v6, v6

    if-le v5, v6, :cond_5

    iget-object v5, p0, Lokhttp3/internal/framed/m$b;->c:[Lokhttp3/internal/framed/Header;

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    new-array v5, v5, [Lokhttp3/internal/framed/Header;

    iget-object v6, p0, Lokhttp3/internal/framed/m$b;->c:[Lokhttp3/internal/framed/Header;

    iget-object v7, p0, Lokhttp3/internal/framed/m$b;->c:[Lokhttp3/internal/framed/Header;

    array-length v7, v7

    iget-object v8, p0, Lokhttp3/internal/framed/m$b;->c:[Lokhttp3/internal/framed/Header;

    array-length v8, v8

    invoke-static {v6, v1, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lokhttp3/internal/framed/m$b;->c:[Lokhttp3/internal/framed/Header;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lokhttp3/internal/framed/m$b;->d:I

    iput-object v5, p0, Lokhttp3/internal/framed/m$b;->c:[Lokhttp3/internal/framed/Header;

    :cond_5
    iget v5, p0, Lokhttp3/internal/framed/m$b;->d:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lokhttp3/internal/framed/m$b;->d:I

    iget-object v6, p0, Lokhttp3/internal/framed/m$b;->c:[Lokhttp3/internal/framed/Header;

    aput-object v3, v6, v5

    iget v3, p0, Lokhttp3/internal/framed/m$b;->e:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lokhttp3/internal/framed/m$b;->e:I

    iget v3, p0, Lokhttp3/internal/framed/m$b;->f:I

    add-int/2addr v3, v4

    iput v3, p0, Lokhttp3/internal/framed/m$b;->f:I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method
