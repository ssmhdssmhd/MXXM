.class public Lnet/tsz/afinal/reflect/ClassUtils;
.super Ljava/lang/Object;
.source "ClassUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getManyToOneList(Ljava/lang/Class;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lnet/tsz/afinal/db/table/ManyToOne;",
            ">;"
        }
    .end annotation

    .line 199
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v0, "mList":Ljava/util/List;, "Ljava/util/List<Lnet/tsz/afinal/db/table/ManyToOne;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 202
    .local v1, "fs":[Ljava/lang/reflect/Field;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 216
    return-object v0

    .line 202
    :cond_0
    aget-object v4, v1, v3

    .line 203
    .local v4, "f":Ljava/lang/reflect/Field;
    invoke-static {v4}, Lnet/tsz/afinal/reflect/FieldUtils;->isTransient(Ljava/lang/reflect/Field;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Lnet/tsz/afinal/reflect/FieldUtils;->isManyToOne(Ljava/lang/reflect/Field;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 205
    new-instance v5, Lnet/tsz/afinal/db/table/ManyToOne;

    invoke-direct {v5}, Lnet/tsz/afinal/db/table/ManyToOne;-><init>()V

    .line 206
    .local v5, "mto":Lnet/tsz/afinal/db/table/ManyToOne;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/tsz/afinal/db/table/ManyToOne;->setManyClass(Ljava/lang/Class;)V

    .line 207
    invoke-static {v4}, Lnet/tsz/afinal/reflect/FieldUtils;->getColumnByField(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/tsz/afinal/db/table/ManyToOne;->setColumn(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/tsz/afinal/db/table/ManyToOne;->setFieldName(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/tsz/afinal/db/table/ManyToOne;->setDataType(Ljava/lang/Class;)V

    .line 210
    invoke-static {p0, v4}, Lnet/tsz/afinal/reflect/FieldUtils;->getFieldSetMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/tsz/afinal/db/table/ManyToOne;->setSet(Ljava/lang/reflect/Method;)V

    .line 211
    invoke-static {p0, v4}, Lnet/tsz/afinal/reflect/FieldUtils;->getFieldGetMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/tsz/afinal/db/table/ManyToOne;->setGet(Ljava/lang/reflect/Method;)V

    .line 213
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .end local v4    # "f":Ljava/lang/reflect/Field;
    .end local v5    # "mto":Lnet/tsz/afinal/db/table/ManyToOne;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 217
    .end local v1    # "fs":[Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method

.method public static getOneToManyList(Ljava/lang/Class;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lnet/tsz/afinal/db/table/OneToMany;",
            ">;"
        }
    .end annotation

    .line 232
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v0, "oList":Ljava/util/List;, "Ljava/util/List<Lnet/tsz/afinal/db/table/OneToMany;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 235
    .local v1, "fs":[Ljava/lang/reflect/Field;
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v2, :cond_0

    .line 261
    return-object v0

    .line 235
    :cond_0
    aget-object v5, v1, v4

    .line 236
    .local v5, "f":Ljava/lang/reflect/Field;
    invoke-static {v5}, Lnet/tsz/afinal/reflect/FieldUtils;->isTransient(Ljava/lang/reflect/Field;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v5}, Lnet/tsz/afinal/reflect/FieldUtils;->isOneToMany(Ljava/lang/reflect/Field;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 238
    new-instance v6, Lnet/tsz/afinal/db/table/OneToMany;

    invoke-direct {v6}, Lnet/tsz/afinal/db/table/OneToMany;-><init>()V

    .line 240
    .local v6, "otm":Lnet/tsz/afinal/db/table/OneToMany;
    invoke-static {v5}, Lnet/tsz/afinal/reflect/FieldUtils;->getColumnByField(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnet/tsz/afinal/db/table/OneToMany;->setColumn(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnet/tsz/afinal/db/table/OneToMany;->setFieldName(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v7

    .line 245
    .local v7, "type":Ljava/lang/reflect/Type;
    instance-of v8, v7, Ljava/lang/reflect/ParameterizedType;

    if-eqz v8, :cond_2

    .line 246
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/ParameterizedType;

    .line 247
    .local v8, "pType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v8}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v9

    aget-object v9, v9, v3

    check-cast v9, Ljava/lang/Class;

    .line 248
    .local v9, "pClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v9, :cond_1

    .line 249
    invoke-virtual {v6, v9}, Lnet/tsz/afinal/db/table/OneToMany;->setOneClass(Ljava/lang/Class;)V

    .line 254
    .end local v8    # "pType":Ljava/lang/reflect/ParameterizedType;
    .end local v9    # "pClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v6, v8}, Lnet/tsz/afinal/db/table/OneToMany;->setDataType(Ljava/lang/Class;)V

    .line 255
    invoke-static {p0, v5}, Lnet/tsz/afinal/reflect/FieldUtils;->getFieldSetMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v6, v8}, Lnet/tsz/afinal/db/table/OneToMany;->setSet(Ljava/lang/reflect/Method;)V

    .line 256
    invoke-static {p0, v5}, Lnet/tsz/afinal/reflect/FieldUtils;->getFieldGetMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v6, v8}, Lnet/tsz/afinal/db/table/OneToMany;->setGet(Ljava/lang/reflect/Method;)V

    .line 258
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 251
    :cond_2
    new-instance v2, Lnet/tsz/afinal/exception/DbException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getOneToManyList Exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'s type is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/tsz/afinal/exception/DbException;-><init>(Ljava/lang/String;)V

    .end local v0    # "oList":Ljava/util/List;, "Ljava/util/List<Lnet/tsz/afinal/db/table/OneToMany;>;"
    .end local p0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v5    # "f":Ljava/lang/reflect/Field;
    .end local v6    # "otm":Lnet/tsz/afinal/db/table/OneToMany;
    .end local v7    # "type":Ljava/lang/reflect/Type;
    .restart local v0    # "oList":Ljava/util/List;, "Ljava/util/List<Lnet/tsz/afinal/db/table/OneToMany;>;"
    .restart local p0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 262
    .end local v1    # "fs":[Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 263
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw v2

    :goto_3
    goto :goto_2
.end method

.method public static getPrimaryKeyColumn(Ljava/lang/Class;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 58
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 59
    .local v0, "primaryKey":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 60
    .local v1, "fields":[Ljava/lang/reflect/Field;
    if-eqz v1, :cond_9

    .line 61
    const/4 v2, 0x0

    .line 62
    .local v2, "idAnnotation":Lnet/tsz/afinal/annotation/sqlite/Id;
    const/4 v3, 0x0

    .line 64
    .local v3, "idField":Ljava/lang/reflect/Field;
    array-length v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v4, :cond_0

    move-object v8, v2

    move-object v9, v3

    goto :goto_1

    :cond_0
    aget-object v7, v1, v6

    .line 65
    .local v7, "field":Ljava/lang/reflect/Field;
    const-class v8, Lnet/tsz/afinal/annotation/sqlite/Id;

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    move-object v2, v8

    check-cast v2, Lnet/tsz/afinal/annotation/sqlite/Id;

    .line 66
    if-eqz v2, :cond_8

    .line 67
    move-object v3, v7

    .line 68
    move-object v8, v2

    move-object v9, v3

    .line 72
    .end local v2    # "idAnnotation":Lnet/tsz/afinal/annotation/sqlite/Id;
    .end local v3    # "idField":Ljava/lang/reflect/Field;
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .local v8, "idAnnotation":Lnet/tsz/afinal/annotation/sqlite/Id;
    .local v9, "idField":Ljava/lang/reflect/Field;
    :goto_1
    if-eqz v8, :cond_2

    .line 73
    invoke-interface {v8}, Lnet/tsz/afinal/annotation/sqlite/Id;->column()Ljava/lang/String;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 75
    :cond_1
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 77
    :cond_2
    array-length v10, v1

    const/4 v2, 0x0

    :goto_2
    if-lt v2, v10, :cond_6

    .line 82
    array-length v3, v1

    :goto_3
    if-lt v5, v3, :cond_4

    .line 90
    .end local v8    # "idAnnotation":Lnet/tsz/afinal/annotation/sqlite/Id;
    .end local v9    # "idField":Ljava/lang/reflect/Field;
    :cond_3
    :goto_4
    return-object v0

    .line 82
    .restart local v8    # "idAnnotation":Lnet/tsz/afinal/annotation/sqlite/Id;
    .restart local v9    # "idField":Ljava/lang/reflect/Field;
    :cond_4
    aget-object v2, v1, v5

    .line 83
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "id"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 84
    return-object v6

    .line 82
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 77
    :cond_6
    aget-object v3, v1, v2

    .line 78
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "_id"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 79
    return-object v6

    .line 77
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 64
    .end local v8    # "idAnnotation":Lnet/tsz/afinal/annotation/sqlite/Id;
    .end local v9    # "idField":Ljava/lang/reflect/Field;
    .local v2, "idAnnotation":Lnet/tsz/afinal/annotation/sqlite/Id;
    .local v3, "idField":Ljava/lang/reflect/Field;
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 88
    .end local v2    # "idAnnotation":Lnet/tsz/afinal/annotation/sqlite/Id;
    .end local v3    # "idField":Ljava/lang/reflect/Field;
    :cond_9
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "this model["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] has no field"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v2

    :goto_6
    goto :goto_5
.end method

.method public static getPrimaryKeyField(Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 100
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 101
    .local v0, "primaryKeyField":Ljava/lang/reflect/Field;
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 102
    .local v1, "fields":[Ljava/lang/reflect/Field;
    if-eqz v1, :cond_8

    .line 104
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v2, :cond_0

    goto :goto_1

    :cond_0
    aget-object v5, v1, v4

    .line 105
    .local v5, "field":Ljava/lang/reflect/Field;
    const-class v6, Lnet/tsz/afinal/annotation/sqlite/Id;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 106
    move-object v0, v5

    .line 107
    nop

    .line 111
    .end local v5    # "field":Ljava/lang/reflect/Field;
    :goto_1
    if-nez v0, :cond_3

    .line 112
    array-length v2, v1

    const/4 v4, 0x0

    :goto_2
    if-lt v4, v2, :cond_1

    goto :goto_3

    :cond_1
    aget-object v5, v1, v4

    .line 113
    .restart local v5    # "field":Ljava/lang/reflect/Field;
    const-string v6, "_id"

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 114
    move-object v0, v5

    .line 115
    goto :goto_3

    .line 112
    .end local v5    # "field":Ljava/lang/reflect/Field;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 120
    :cond_3
    :goto_3
    if-nez v0, :cond_6

    .line 121
    array-length v2, v1

    :goto_4
    if-lt v3, v2, :cond_4

    goto :goto_5

    :cond_4
    aget-object v4, v1, v3

    .line 122
    .local v4, "field":Ljava/lang/reflect/Field;
    const-string v5, "id"

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 123
    move-object v0, v4

    .line 124
    goto :goto_5

    .line 121
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 132
    :cond_6
    :goto_5
    return-object v0

    .line 104
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 130
    :cond_8
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "this model["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] has no field"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw v2

    :goto_7
    goto :goto_6
.end method

.method public static getPrimaryKeyFieldName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 142
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lnet/tsz/afinal/reflect/ClassUtils;->getPrimaryKeyField(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 143
    .local v0, "f":Ljava/lang/reflect/Field;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static getPrimaryKeyValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "entity"    # Ljava/lang/Object;

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lnet/tsz/afinal/reflect/ClassUtils;->getPrimaryKeyField(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/tsz/afinal/reflect/FieldUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getPropertyList(Ljava/lang/Class;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lnet/tsz/afinal/db/table/Property;",
            ">;"
        }
    .end annotation

    .line 157
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v0, "plist":Ljava/util/List;, "Ljava/util/List<Lnet/tsz/afinal/db/table/Property;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 160
    .local v1, "fs":[Ljava/lang/reflect/Field;
    invoke-static {p0}, Lnet/tsz/afinal/reflect/ClassUtils;->getPrimaryKeyFieldName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "primaryKeyFieldName":Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v3, :cond_0

    .line 183
    return-object v0

    .line 161
    :cond_0
    aget-object v5, v1, v4

    .line 163
    .local v5, "f":Ljava/lang/reflect/Field;
    invoke-static {v5}, Lnet/tsz/afinal/reflect/FieldUtils;->isTransient(Ljava/lang/reflect/Field;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 164
    invoke-static {v5}, Lnet/tsz/afinal/reflect/FieldUtils;->isBaseDateType(Ljava/lang/reflect/Field;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 166
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 167
    goto :goto_1

    .line 169
    :cond_1
    new-instance v6, Lnet/tsz/afinal/db/table/Property;

    invoke-direct {v6}, Lnet/tsz/afinal/db/table/Property;-><init>()V

    .line 171
    .local v6, "property":Lnet/tsz/afinal/db/table/Property;
    invoke-static {v5}, Lnet/tsz/afinal/reflect/FieldUtils;->getColumnByField(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnet/tsz/afinal/db/table/Property;->setColumn(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnet/tsz/afinal/db/table/Property;->setFieldName(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnet/tsz/afinal/db/table/Property;->setDataType(Ljava/lang/Class;)V

    .line 174
    invoke-static {v5}, Lnet/tsz/afinal/reflect/FieldUtils;->getPropertyDefaultValue(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnet/tsz/afinal/db/table/Property;->setDefaultValue(Ljava/lang/String;)V

    .line 175
    invoke-static {p0, v5}, Lnet/tsz/afinal/reflect/FieldUtils;->getFieldSetMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnet/tsz/afinal/db/table/Property;->setSet(Ljava/lang/reflect/Method;)V

    .line 176
    invoke-static {p0, v5}, Lnet/tsz/afinal/reflect/FieldUtils;->getFieldGetMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnet/tsz/afinal/db/table/Property;->setGet(Ljava/lang/reflect/Method;)V

    .line 177
    invoke-virtual {v6, v5}, Lnet/tsz/afinal/db/table/Property;->setField(Ljava/lang/reflect/Field;)V

    .line 179
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v5    # "f":Ljava/lang/reflect/Field;
    .end local v6    # "property":Lnet/tsz/afinal/db/table/Property;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 184
    .end local v1    # "fs":[Ljava/lang/reflect/Field;
    .end local v2    # "primaryKeyFieldName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw v2

    :goto_3
    goto :goto_2
.end method

.method public static getTableName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 40
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lnet/tsz/afinal/annotation/sqlite/Table;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lnet/tsz/afinal/annotation/sqlite/Table;

    .line 41
    .local v0, "table":Lnet/tsz/afinal/annotation/sqlite/Table;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lnet/tsz/afinal/annotation/sqlite/Table;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    invoke-interface {v0}, Lnet/tsz/afinal/annotation/sqlite/Table;->name()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 43
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    const/16 v3, 0x5f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
