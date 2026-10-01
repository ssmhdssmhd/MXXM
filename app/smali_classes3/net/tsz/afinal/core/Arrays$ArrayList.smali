.class Lnet/tsz/afinal/core/Arrays$ArrayList;
.super Ljava/util/AbstractList;
.source "Arrays.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/io/Serializable;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/tsz/afinal/core/Arrays;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrayList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/io/Serializable;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x265bc3413277f92eL


# instance fields
.field private final a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .param p1, "storage"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .line 40
    .local p0, "this":Lnet/tsz/afinal/core/Arrays$ArrayList;, "Lnet/tsz/afinal/core/Arrays$ArrayList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 41
    if-eqz p1, :cond_0

    .line 44
    iput-object p1, p0, Lnet/tsz/afinal/core/Arrays$ArrayList;->a:[Ljava/lang/Object;

    .line 45
    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;

    .line 49
    .local p0, "this":Lnet/tsz/afinal/core/Arrays$ArrayList;, "Lnet/tsz/afinal/core/Arrays$ArrayList<TE;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 50
    iget-object v2, p0, Lnet/tsz/afinal/core/Arrays$ArrayList;->a:[Ljava/lang/Object;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v3, :cond_0

    goto :goto_2

    :cond_0
    aget-object v5, v2, v4

    .line 51
    .local v5, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 52
    return v1

    .line 50
    .end local v5    # "element":Ljava/lang/Object;, "TE;"
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 56
    :cond_2
    iget-object v2, p0, Lnet/tsz/afinal/core/Arrays$ArrayList;->a:[Ljava/lang/Object;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-lt v4, v3, :cond_3

    .line 62
    :goto_2
    return v0

    .line 56
    :cond_3
    aget-object v5, v2, v4

    .line 57
    .restart local v5    # "element":Ljava/lang/Object;, "TE;"
    if-nez v5, :cond_4

    .line 58
    return v1

    .line 56
    .end local v5    # "element":Ljava/lang/Object;, "TE;"
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 68
    .local p0, "this":Lnet/tsz/afinal/core/Arrays$ArrayList;, "Lnet/tsz/afinal/core/Arrays$ArrayList<TE;>;"
    :try_start_0
    iget-object v0, p0, Lnet/tsz/afinal/core/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 69
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    throw v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 77
    .local p0, "this":Lnet/tsz/afinal/core/Arrays$ArrayList;, "Lnet/tsz/afinal/core/Arrays$ArrayList<TE;>;"
    if-eqz p1, :cond_2

    .line 78
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lnet/tsz/afinal/core/Arrays$ArrayList;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .end local v0    # "i":I
    goto :goto_2

    .line 79
    .restart local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lnet/tsz/afinal/core/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    return v0

    .line 78
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lnet/tsz/afinal/core/Arrays$ArrayList;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 90
    .end local v0    # "i":I
    :goto_2
    const/4 v0, -0x1

    return v0

    .line 85
    .restart local v0    # "i":I
    :cond_3
    iget-object v1, p0, Lnet/tsz/afinal/core/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_4

    .line 86
    return v0

    .line 84
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 95
    .local p0, "this":Lnet/tsz/afinal/core/Arrays$ArrayList;, "Lnet/tsz/afinal/core/Arrays$ArrayList<TE;>;"
    if-eqz p1, :cond_2

    .line 96
    iget-object v0, p0, Lnet/tsz/afinal/core/Arrays$ArrayList;->a:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .end local v0    # "i":I
    goto :goto_2

    .line 97
    .restart local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lnet/tsz/afinal/core/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    return v0

    .line 96
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 102
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lnet/tsz/afinal/core/Arrays$ArrayList;->a:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-gez v0, :cond_3

    .line 108
    .end local v0    # "i":I
    :goto_2
    const/4 v0, -0x1

    return v0

    .line 103
    .restart local v0    # "i":I
    :cond_3
    iget-object v1, p0, Lnet/tsz/afinal/core/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_4

    .line 104
    return v0

    .line 102
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 113
    .local p0, "this":Lnet/tsz/afinal/core/Arrays$ArrayList;, "Lnet/tsz/afinal/core/Arrays$ArrayList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lnet/tsz/afinal/core/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 114
    .local v0, "result":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lnet/tsz/afinal/core/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aput-object p2, v1, p1

    .line 115
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 120
    .local p0, "this":Lnet/tsz/afinal/core/Arrays$ArrayList;, "Lnet/tsz/afinal/core/Arrays$ArrayList<TE;>;"
    iget-object v0, p0, Lnet/tsz/afinal/core/Arrays$ArrayList;->a:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 125
    .local p0, "this":Lnet/tsz/afinal/core/Arrays$ArrayList;, "Lnet/tsz/afinal/core/Arrays$ArrayList<TE;>;"
    iget-object v0, p0, Lnet/tsz/afinal/core/Arrays$ArrayList;->a:[Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .param p1, "contents"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 131
    .local p0, "this":Lnet/tsz/afinal/core/Arrays$ArrayList;, "Lnet/tsz/afinal/core/Arrays$ArrayList<TE;>;"
    invoke-virtual {p0}, Lnet/tsz/afinal/core/Arrays$ArrayList;->size()I

    move-result v0

    .line 132
    .local v0, "size":I
    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 133
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 134
    .local v1, "ct":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    move-object p1, v2

    check-cast p1, [Ljava/lang/Object;

    .line 136
    .end local v1    # "ct":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    iget-object v1, p0, Lnet/tsz/afinal/core/Arrays$ArrayList;->a:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 138
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 140
    :cond_1
    return-object p1
.end method
