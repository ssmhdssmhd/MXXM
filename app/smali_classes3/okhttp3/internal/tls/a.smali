.class final Lokhttp3/internal/tls/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:[C


# direct methods
.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RFC2253"

    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/tls/a;->a:Ljava/lang/String;

    iget-object p1, p0, Lokhttp3/internal/tls/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lokhttp3/internal/tls/a;->b:I

    return-void
.end method

.method private a(I)I
    .locals 9

    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lokhttp3/internal/tls/a;->b:I

    const-string v2, "Malformed DN: "

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lokhttp3/internal/tls/a;->g:[C

    aget-char p1, v1, p1

    const/16 v1, 0x46

    const/16 v3, 0x66

    const/16 v4, 0x41

    const/16 v5, 0x39

    const/16 v6, 0x61

    const/16 v7, 0x30

    if-lt p1, v7, :cond_0

    if-gt p1, v5, :cond_0

    add-int/lit8 p1, p1, -0x30

    goto :goto_0

    :cond_0
    if-lt p1, v6, :cond_1

    if-gt p1, v3, :cond_1

    add-int/lit8 p1, p1, -0x57

    goto :goto_0

    :cond_1
    if-lt p1, v4, :cond_5

    if-gt p1, v1, :cond_5

    add-int/lit8 p1, p1, -0x37

    :goto_0
    iget-object v8, p0, Lokhttp3/internal/tls/a;->g:[C

    aget-char v0, v8, v0

    if-lt v0, v7, :cond_2

    if-gt v0, v5, :cond_2

    add-int/lit8 v0, v0, -0x30

    goto :goto_1

    :cond_2
    if-lt v0, v6, :cond_3

    if-gt v0, v3, :cond_3

    add-int/lit8 v0, v0, -0x57

    goto :goto_1

    :cond_3
    if-lt v0, v4, :cond_4

    if-gt v0, v1, :cond_4

    add-int/lit8 v0, v0, -0x37

    :goto_1
    shl-int/lit8 p1, p1, 0x4

    add-int/2addr p1, v0

    return p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lokhttp3/internal/tls/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lokhttp3/internal/tls/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lokhttp3/internal/tls/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a()Ljava/lang/String;
    .locals 5

    :goto_0
    iget v0, p0, Lokhttp3/internal/tls/a;->c:I

    iget v1, p0, Lokhttp3/internal/tls/a;->b:I

    const/16 v2, 0x20

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/a;->c:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_0

    iget v0, p0, Lokhttp3/internal/tls/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/a;->c:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lokhttp3/internal/tls/a;->c:I

    iget v1, p0, Lokhttp3/internal/tls/a;->b:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto/16 :goto_4

    :cond_1
    iget v0, p0, Lokhttp3/internal/tls/a;->c:I

    iput v0, p0, Lokhttp3/internal/tls/a;->d:I

    :goto_1
    iget v0, p0, Lokhttp3/internal/tls/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/a;->c:I

    iget v0, p0, Lokhttp3/internal/tls/a;->c:I

    iget v1, p0, Lokhttp3/internal/tls/a;->b:I

    const/16 v3, 0x3d

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/a;->c:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/a;->c:I

    aget-char v0, v0, v1

    if-eq v0, v2, :cond_2

    goto :goto_1

    :cond_2
    iget v0, p0, Lokhttp3/internal/tls/a;->c:I

    iget v1, p0, Lokhttp3/internal/tls/a;->b:I

    const-string v4, "Unexpected end of DN: "

    if-ge v0, v1, :cond_b

    iget v0, p0, Lokhttp3/internal/tls/a;->c:I

    iput v0, p0, Lokhttp3/internal/tls/a;->e:I

    iget-object v0, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/a;->c:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_5

    :goto_2
    iget v0, p0, Lokhttp3/internal/tls/a;->c:I

    iget v1, p0, Lokhttp3/internal/tls/a;->b:I

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/a;->c:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/a;->c:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_3

    iget v0, p0, Lokhttp3/internal/tls/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/a;->c:I

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/a;->c:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_4

    iget v0, p0, Lokhttp3/internal/tls/a;->c:I

    iget v1, p0, Lokhttp3/internal/tls/a;->b:I

    if-eq v0, v1, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lokhttp3/internal/tls/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_3
    iget v0, p0, Lokhttp3/internal/tls/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/a;->c:I

    iget v0, p0, Lokhttp3/internal/tls/a;->c:I

    iget v1, p0, Lokhttp3/internal/tls/a;->b:I

    if-ge v0, v1, :cond_6

    iget-object v0, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/a;->c:I

    aget-char v0, v0, v1

    if-eq v0, v2, :cond_5

    :cond_6
    iget v0, p0, Lokhttp3/internal/tls/a;->e:I

    iget v1, p0, Lokhttp3/internal/tls/a;->d:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    if-le v0, v1, :cond_a

    iget-object v0, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v2, p0, Lokhttp3/internal/tls/a;->d:I

    add-int/lit8 v2, v2, 0x3

    aget-char v0, v0, v2

    const/16 v2, 0x2e

    if-ne v0, v2, :cond_a

    iget-object v0, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v2, p0, Lokhttp3/internal/tls/a;->d:I

    aget-char v0, v0, v2

    const/16 v2, 0x4f

    if-eq v0, v2, :cond_7

    iget-object v0, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v2, p0, Lokhttp3/internal/tls/a;->d:I

    aget-char v0, v0, v2

    const/16 v2, 0x6f

    if-ne v0, v2, :cond_a

    :cond_7
    iget-object v0, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v2, p0, Lokhttp3/internal/tls/a;->d:I

    add-int/lit8 v2, v2, 0x1

    aget-char v0, v0, v2

    const/16 v2, 0x49

    if-eq v0, v2, :cond_8

    iget-object v0, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v2, p0, Lokhttp3/internal/tls/a;->d:I

    add-int/lit8 v2, v2, 0x1

    aget-char v0, v0, v2

    const/16 v2, 0x69

    if-ne v0, v2, :cond_a

    :cond_8
    iget-object v0, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v2, p0, Lokhttp3/internal/tls/a;->d:I

    add-int/lit8 v2, v2, 0x2

    aget-char v0, v0, v2

    const/16 v2, 0x44

    if-eq v0, v2, :cond_9

    iget-object v0, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v2, p0, Lokhttp3/internal/tls/a;->d:I

    add-int/lit8 v2, v2, 0x2

    aget-char v0, v0, v2

    const/16 v2, 0x64

    if-ne v0, v2, :cond_a

    :cond_9
    iget v0, p0, Lokhttp3/internal/tls/a;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lokhttp3/internal/tls/a;->d:I

    :cond_a
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v2, p0, Lokhttp3/internal/tls/a;->d:I

    iget v3, p0, Lokhttp3/internal/tls/a;->e:I

    iget v4, p0, Lokhttp3/internal/tls/a;->d:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    :goto_4
    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lokhttp3/internal/tls/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method private b()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lokhttp3/internal/tls/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/a;->c:I

    iget v0, p0, Lokhttp3/internal/tls/a;->c:I

    iput v0, p0, Lokhttp3/internal/tls/a;->d:I

    iget v0, p0, Lokhttp3/internal/tls/a;->d:I

    :goto_0
    iput v0, p0, Lokhttp3/internal/tls/a;->e:I

    iget v0, p0, Lokhttp3/internal/tls/a;->c:I

    iget v1, p0, Lokhttp3/internal/tls/a;->b:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/a;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    :goto_1
    iget v0, p0, Lokhttp3/internal/tls/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/a;->c:I

    iget v0, p0, Lokhttp3/internal/tls/a;->c:I

    iget v1, p0, Lokhttp3/internal/tls/a;->b:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/a;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v2, p0, Lokhttp3/internal/tls/a;->d:I

    iget v3, p0, Lokhttp3/internal/tls/a;->e:I

    iget v4, p0, Lokhttp3/internal/tls/a;->d:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/a;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/a;->e:I

    invoke-direct {p0}, Lokhttp3/internal/tls/a;->e()C

    move-result v2

    aput-char v2, v0, v1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/a;->e:I

    iget-object v2, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v3, p0, Lokhttp3/internal/tls/a;->c:I

    aget-char v2, v2, v3

    int-to-char v2, v2

    aput-char v2, v0, v1

    :goto_2
    iget v0, p0, Lokhttp3/internal/tls/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/a;->c:I

    iget v0, p0, Lokhttp3/internal/tls/a;->e:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected end of DN: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lokhttp3/internal/tls/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method private c()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lokhttp3/internal/tls/a;->c:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lokhttp3/internal/tls/a;->b:I

    const-string v2, "Unexpected end of DN: "

    if-ge v0, v1, :cond_7

    iget v0, p0, Lokhttp3/internal/tls/a;->c:I

    iput v0, p0, Lokhttp3/internal/tls/a;->d:I

    iget v0, p0, Lokhttp3/internal/tls/a;->c:I

    :goto_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/a;->c:I

    iget v0, p0, Lokhttp3/internal/tls/a;->c:I

    iget v1, p0, Lokhttp3/internal/tls/a;->b:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/a;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/a;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/a;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/a;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    iget v0, p0, Lokhttp3/internal/tls/a;->c:I

    iput v0, p0, Lokhttp3/internal/tls/a;->e:I

    :goto_1
    iget v0, p0, Lokhttp3/internal/tls/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/a;->c:I

    iget v0, p0, Lokhttp3/internal/tls/a;->c:I

    iget v3, p0, Lokhttp3/internal/tls/a;->b:I

    if-ge v0, v3, :cond_4

    iget-object v0, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v3, p0, Lokhttp3/internal/tls/a;->c:I

    aget-char v0, v0, v3

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v3, p0, Lokhttp3/internal/tls/a;->c:I

    aget-char v0, v0, v3

    const/16 v3, 0x41

    if-lt v0, v3, :cond_2

    iget-object v0, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v3, p0, Lokhttp3/internal/tls/a;->c:I

    aget-char v0, v0, v3

    const/16 v3, 0x46

    if-gt v0, v3, :cond_2

    iget-object v0, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v3, p0, Lokhttp3/internal/tls/a;->c:I

    aget-char v4, v0, v3

    add-int/2addr v4, v1

    int-to-char v1, v4

    int-to-char v1, v1

    aput-char v1, v0, v3

    :cond_2
    iget v0, p0, Lokhttp3/internal/tls/a;->c:I

    goto :goto_0

    :cond_3
    :goto_2
    iget v0, p0, Lokhttp3/internal/tls/a;->c:I

    iput v0, p0, Lokhttp3/internal/tls/a;->e:I

    :cond_4
    iget v0, p0, Lokhttp3/internal/tls/a;->e:I

    iget v1, p0, Lokhttp3/internal/tls/a;->d:I

    sub-int/2addr v0, v1

    const/4 v1, 0x5

    if-lt v0, v1, :cond_6

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_6

    div-int/lit8 v1, v0, 0x2

    new-array v2, v1, [B

    iget v3, p0, Lokhttp3/internal/tls/a;->d:I

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_5

    invoke-direct {p0, v3}, Lokhttp3/internal/tls/a;->a(I)I

    move-result v5

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v3, p0, Lokhttp3/internal/tls/a;->d:I

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lokhttp3/internal/tls/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lokhttp3/internal/tls/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method private d()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lokhttp3/internal/tls/a;->c:I

    iput v0, p0, Lokhttp3/internal/tls/a;->d:I

    iget v0, p0, Lokhttp3/internal/tls/a;->c:I

    iput v0, p0, Lokhttp3/internal/tls/a;->e:I

    :cond_0
    :goto_0
    iget v0, p0, Lokhttp3/internal/tls/a;->c:I

    iget v1, p0, Lokhttp3/internal/tls/a;->b:I

    if-lt v0, v1, :cond_1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v2, p0, Lokhttp3/internal/tls/a;->d:I

    iget v3, p0, Lokhttp3/internal/tls/a;->e:I

    iget v4, p0, Lokhttp3/internal/tls/a;->d:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/a;->c:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/a;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lokhttp3/internal/tls/a;->e:I

    iget-object v2, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v3, p0, Lokhttp3/internal/tls/a;->c:I

    aget-char v2, v2, v3

    int-to-char v2, v2

    aput-char v2, v0, v1

    goto :goto_1

    :sswitch_0
    iget-object v0, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/a;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lokhttp3/internal/tls/a;->e:I

    invoke-direct {p0}, Lokhttp3/internal/tls/a;->e()C

    move-result v2

    aput-char v2, v0, v1

    :goto_1
    iget v0, p0, Lokhttp3/internal/tls/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/a;->c:I

    goto :goto_0

    :sswitch_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v2, p0, Lokhttp3/internal/tls/a;->d:I

    iget v3, p0, Lokhttp3/internal/tls/a;->e:I

    iget v4, p0, Lokhttp3/internal/tls/a;->d:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3

    :sswitch_2
    iget v0, p0, Lokhttp3/internal/tls/a;->e:I

    iput v0, p0, Lokhttp3/internal/tls/a;->f:I

    iget v0, p0, Lokhttp3/internal/tls/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/a;->c:I

    iget-object v0, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/a;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lokhttp3/internal/tls/a;->e:I

    const/16 v2, 0x20

    int-to-char v3, v2

    aput-char v3, v0, v1

    :goto_2
    iget v0, p0, Lokhttp3/internal/tls/a;->c:I

    iget v1, p0, Lokhttp3/internal/tls/a;->b:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/a;->c:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/a;->e:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lokhttp3/internal/tls/a;->e:I

    aput-char v3, v0, v1

    iget v0, p0, Lokhttp3/internal/tls/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/a;->c:I

    goto :goto_2

    :cond_2
    iget v0, p0, Lokhttp3/internal/tls/a;->c:I

    iget v1, p0, Lokhttp3/internal/tls/a;->b:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/a;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/a;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/a;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_0

    :cond_3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v2, p0, Lokhttp3/internal/tls/a;->d:I

    iget v3, p0, Lokhttp3/internal/tls/a;->f:I

    iget v4, p0, Lokhttp3/internal/tls/a;->d:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    :goto_3
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_2
        0x2b -> :sswitch_1
        0x2c -> :sswitch_1
        0x3b -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method private e()C
    .locals 3

    iget v0, p0, Lokhttp3/internal/tls/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/a;->c:I

    iget v0, p0, Lokhttp3/internal/tls/a;->c:I

    iget v1, p0, Lokhttp3/internal/tls/a;->b:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/a;->c:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0}, Lokhttp3/internal/tls/a;->f()C

    move-result v0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v1, p0, Lokhttp3/internal/tls/a;->c:I

    aget-char v0, v0, v1

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected end of DN: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lokhttp3/internal/tls/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x22 -> :sswitch_0
        0x23 -> :sswitch_0
        0x25 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x5c -> :sswitch_0
        0x5f -> :sswitch_0
    .end sparse-switch
.end method

.method private f()C
    .locals 8

    iget v0, p0, Lokhttp3/internal/tls/a;->c:I

    invoke-direct {p0, v0}, Lokhttp3/internal/tls/a;->a(I)I

    move-result v0

    iget v1, p0, Lokhttp3/internal/tls/a;->c:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lokhttp3/internal/tls/a;->c:I

    const/16 v1, 0x80

    if-ge v0, v1, :cond_1

    :cond_0
    int-to-char v0, v0

    goto :goto_3

    :cond_1
    const/16 v3, 0xc0

    const/16 v4, 0x3f

    if-lt v0, v3, :cond_6

    const/16 v3, 0xf7

    if-gt v0, v3, :cond_6

    const/16 v3, 0xdf

    if-gt v0, v3, :cond_2

    and-int/lit8 v0, v0, 0x1f

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/16 v3, 0xef

    if-gt v0, v3, :cond_3

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x2

    goto :goto_0

    :cond_3
    and-int/lit8 v0, v0, 0x7

    const/4 v3, 0x3

    :goto_0
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_0

    iget v6, p0, Lokhttp3/internal/tls/a;->c:I

    add-int/2addr v6, v2

    iput v6, p0, Lokhttp3/internal/tls/a;->c:I

    iget v6, p0, Lokhttp3/internal/tls/a;->c:I

    iget v7, p0, Lokhttp3/internal/tls/a;->b:I

    if-eq v6, v7, :cond_6

    iget-object v6, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v7, p0, Lokhttp3/internal/tls/a;->c:I

    aget-char v6, v6, v7

    const/16 v7, 0x5c

    if-eq v6, v7, :cond_4

    goto :goto_2

    :cond_4
    iget v6, p0, Lokhttp3/internal/tls/a;->c:I

    add-int/2addr v6, v2

    iput v6, p0, Lokhttp3/internal/tls/a;->c:I

    iget v6, p0, Lokhttp3/internal/tls/a;->c:I

    invoke-direct {p0, v6}, Lokhttp3/internal/tls/a;->a(I)I

    move-result v6

    iget v7, p0, Lokhttp3/internal/tls/a;->c:I

    add-int/2addr v7, v2

    iput v7, p0, Lokhttp3/internal/tls/a;->c:I

    and-int/lit16 v7, v6, 0xc0

    if-eq v7, v1, :cond_5

    goto :goto_2

    :cond_5
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    add-int/2addr v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    const/16 v0, 0x3f

    :goto_3
    return v0
.end method


# virtual methods
.method public final findMostSpecific(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    iput v0, p0, Lokhttp3/internal/tls/a;->c:I

    iput v0, p0, Lokhttp3/internal/tls/a;->d:I

    iput v0, p0, Lokhttp3/internal/tls/a;->e:I

    iput v0, p0, Lokhttp3/internal/tls/a;->f:I

    iget-object v0, p0, Lokhttp3/internal/tls/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/tls/a;->g:[C

    invoke-direct {p0}, Lokhttp3/internal/tls/a;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    :goto_0
    iget v2, p0, Lokhttp3/internal/tls/a;->c:I

    iget v3, p0, Lokhttp3/internal/tls/a;->b:I

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v3, p0, Lokhttp3/internal/tls/a;->c:I

    aget-char v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    invoke-direct {p0}, Lokhttp3/internal/tls/a;->d()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    :sswitch_0
    const-string v2, ""

    goto/16 :goto_4

    :sswitch_1
    invoke-direct {p0}, Lokhttp3/internal/tls/a;->c()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    :sswitch_2
    iget v2, p0, Lokhttp3/internal/tls/a;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lokhttp3/internal/tls/a;->c:I

    iget v2, p0, Lokhttp3/internal/tls/a;->c:I

    iput v2, p0, Lokhttp3/internal/tls/a;->d:I

    iget v2, p0, Lokhttp3/internal/tls/a;->d:I

    :goto_1
    iput v2, p0, Lokhttp3/internal/tls/a;->e:I

    iget v2, p0, Lokhttp3/internal/tls/a;->c:I

    iget v3, p0, Lokhttp3/internal/tls/a;->b:I

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v3, p0, Lokhttp3/internal/tls/a;->c:I

    aget-char v2, v2, v3

    const/16 v3, 0x22

    if-ne v2, v3, :cond_2

    :goto_2
    iget v2, p0, Lokhttp3/internal/tls/a;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lokhttp3/internal/tls/a;->c:I

    iget v2, p0, Lokhttp3/internal/tls/a;->c:I

    iget v3, p0, Lokhttp3/internal/tls/a;->b:I

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v3, p0, Lokhttp3/internal/tls/a;->c:I

    aget-char v2, v2, v3

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    goto :goto_2

    :cond_1
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v4, p0, Lokhttp3/internal/tls/a;->d:I

    iget v5, p0, Lokhttp3/internal/tls/a;->e:I

    iget v6, p0, Lokhttp3/internal/tls/a;->d:I

    sub-int/2addr v5, v6

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    goto :goto_4

    :cond_2
    iget-object v2, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v3, p0, Lokhttp3/internal/tls/a;->c:I

    aget-char v2, v2, v3

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v3, p0, Lokhttp3/internal/tls/a;->e:I

    invoke-direct {p0}, Lokhttp3/internal/tls/a;->e()C

    move-result v4

    aput-char v4, v2, v3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v3, p0, Lokhttp3/internal/tls/a;->e:I

    iget-object v4, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v5, p0, Lokhttp3/internal/tls/a;->c:I

    aget-char v4, v4, v5

    int-to-char v4, v4

    aput-char v4, v2, v3

    :goto_3
    iget v2, p0, Lokhttp3/internal/tls/a;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lokhttp3/internal/tls/a;->c:I

    iget v2, p0, Lokhttp3/internal/tls/a;->e:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected end of DN: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lokhttp3/internal/tls/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, p0, Lokhttp3/internal/tls/a;->c:I

    iget v2, p0, Lokhttp3/internal/tls/a;->b:I

    if-ge v0, v2, :cond_9

    iget-object v0, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v2, p0, Lokhttp3/internal/tls/a;->c:I

    aget-char v0, v0, v2

    const/16 v2, 0x2c

    const-string v3, "Malformed DN: "

    if-eq v0, v2, :cond_6

    iget-object v0, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v2, p0, Lokhttp3/internal/tls/a;->c:I

    aget-char v0, v0, v2

    const/16 v2, 0x3b

    if-eq v0, v2, :cond_6

    iget-object v0, p0, Lokhttp3/internal/tls/a;->g:[C

    iget v2, p0, Lokhttp3/internal/tls/a;->c:I

    aget-char v0, v0, v2

    const/16 v2, 0x2b

    if-ne v0, v2, :cond_5

    goto :goto_5

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lokhttp3/internal/tls/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_5
    iget v0, p0, Lokhttp3/internal/tls/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/tls/a;->c:I

    invoke-direct {p0}, Lokhttp3/internal/tls/a;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    goto/16 :goto_0

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lokhttp3/internal/tls/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    move-object v1, v2

    :cond_9
    :goto_6
    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x23 -> :sswitch_1
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
    .end sparse-switch
.end method
