.class public Lnet/tsz/afinal/db/table/TableInfo;
.super Ljava/lang/Object;
.source "TableInfo.java"


# static fields
.field private static final tableInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lnet/tsz/afinal/db/table/TableInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private checkDatabese:Z

.field private className:Ljava/lang/String;

.field private id:Lnet/tsz/afinal/db/table/Id;

.field public final manyToOneMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lnet/tsz/afinal/db/table/ManyToOne;",
            ">;"
        }
    .end annotation
.end field

.field public final oneToManyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lnet/tsz/afinal/db/table/OneToMany;",
            ">;"
        }
    .end annotation
.end field

.field public final propertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lnet/tsz/afinal/db/table/Property;",
            ">;"
        }
    .end annotation
.end field

.field private tableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/tsz/afinal/db/table/TableInfo;->tableInfoMap:Ljava/util/HashMap;

    .line 26
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/tsz/afinal/db/table/TableInfo;->propertyMap:Ljava/util/HashMap;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/tsz/afinal/db/table/TableInfo;->oneToManyMap:Ljava/util/HashMap;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/tsz/afinal/db/table/TableInfo;->manyToOneMap:Ljava/util/HashMap;

    .line 42
    return-void
.end method

.method public static get(Ljava/lang/Class;)Lnet/tsz/afinal/db/table/TableInfo;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/tsz/afinal/db/table/TableInfo;"
        }
    .end annotation

    .line 46
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_c

    .line 49
    sget-object v0, Lnet/tsz/afinal/db/table/TableInfo;->tableInfoMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/tsz/afinal/db/table/TableInfo;

    .line 50
    .local v0, "tableInfo":Lnet/tsz/afinal/db/table/TableInfo;
    const-string v1, "the class["

    if-nez v0, :cond_a

    .line 51
    new-instance v2, Lnet/tsz/afinal/db/table/TableInfo;

    invoke-direct {v2}, Lnet/tsz/afinal/db/table/TableInfo;-><init>()V

    move-object v0, v2

    .line 53
    invoke-static {p0}, Lnet/tsz/afinal/reflect/ClassUtils;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/tsz/afinal/db/table/TableInfo;->setTableName(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/tsz/afinal/db/table/TableInfo;->setClassName(Ljava/lang/String;)V

    .line 56
    invoke-static {p0}, Lnet/tsz/afinal/reflect/ClassUtils;->getPrimaryKeyField(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 57
    .local v2, "idField":Ljava/lang/reflect/Field;
    if-eqz v2, :cond_9

    .line 58
    new-instance v3, Lnet/tsz/afinal/db/table/Id;

    invoke-direct {v3}, Lnet/tsz/afinal/db/table/Id;-><init>()V

    .line 59
    .local v3, "id":Lnet/tsz/afinal/db/table/Id;
    invoke-static {v2}, Lnet/tsz/afinal/reflect/FieldUtils;->getColumnByField(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/tsz/afinal/db/table/Id;->setColumn(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/tsz/afinal/db/table/Id;->setFieldName(Ljava/lang/String;)V

    .line 61
    invoke-static {p0, v2}, Lnet/tsz/afinal/reflect/FieldUtils;->getFieldSetMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/tsz/afinal/db/table/Id;->setSet(Ljava/lang/reflect/Method;)V

    .line 62
    invoke-static {p0, v2}, Lnet/tsz/afinal/reflect/FieldUtils;->getFieldGetMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/tsz/afinal/db/table/Id;->setGet(Ljava/lang/reflect/Method;)V

    .line 63
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/tsz/afinal/db/table/Id;->setDataType(Ljava/lang/Class;)V

    .line 65
    invoke-virtual {v0, v3}, Lnet/tsz/afinal/db/table/TableInfo;->setId(Lnet/tsz/afinal/db/table/Id;)V

    .line 70
    .end local v3    # "id":Lnet/tsz/afinal/db/table/Id;
    invoke-static {p0}, Lnet/tsz/afinal/reflect/ClassUtils;->getPropertyList(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 71
    .local v3, "pList":Ljava/util/List;, "Ljava/util/List<Lnet/tsz/afinal/db/table/Property;>;"
    if-eqz v3, :cond_2

    .line 72
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/tsz/afinal/db/table/Property;

    .line 73
    .local v5, "p":Lnet/tsz/afinal/db/table/Property;
    if-eqz v5, :cond_0

    .line 74
    iget-object v6, v0, Lnet/tsz/afinal/db/table/TableInfo;->propertyMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Lnet/tsz/afinal/db/table/Property;->getColumn()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 78
    .end local v5    # "p":Lnet/tsz/afinal/db/table/Property;
    :cond_2
    :goto_1
    invoke-static {p0}, Lnet/tsz/afinal/reflect/ClassUtils;->getManyToOneList(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 79
    .local v4, "mList":Ljava/util/List;, "Ljava/util/List<Lnet/tsz/afinal/db/table/ManyToOne;>;"
    if-eqz v4, :cond_5

    .line 80
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/tsz/afinal/db/table/ManyToOne;

    .line 81
    .local v6, "m":Lnet/tsz/afinal/db/table/ManyToOne;
    if-eqz v6, :cond_3

    .line 82
    iget-object v7, v0, Lnet/tsz/afinal/db/table/TableInfo;->manyToOneMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Lnet/tsz/afinal/db/table/ManyToOne;->getColumn()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 86
    .end local v6    # "m":Lnet/tsz/afinal/db/table/ManyToOne;
    :cond_5
    :goto_3
    invoke-static {p0}, Lnet/tsz/afinal/reflect/ClassUtils;->getOneToManyList(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    .line 87
    .local v5, "oList":Ljava/util/List;, "Ljava/util/List<Lnet/tsz/afinal/db/table/OneToMany;>;"
    if-eqz v5, :cond_8

    .line 88
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_5

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/tsz/afinal/db/table/OneToMany;

    .line 89
    .local v7, "o":Lnet/tsz/afinal/db/table/OneToMany;
    if-eqz v7, :cond_6

    .line 90
    iget-object v8, v0, Lnet/tsz/afinal/db/table/TableInfo;->oneToManyMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Lnet/tsz/afinal/db/table/OneToMany;->getColumn()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 95
    .end local v7    # "o":Lnet/tsz/afinal/db/table/OneToMany;
    :cond_8
    :goto_5
    sget-object v6, Lnet/tsz/afinal/db/table/TableInfo;->tableInfoMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 67
    .end local v3    # "pList":Ljava/util/List;, "Ljava/util/List<Lnet/tsz/afinal/db/table/Property;>;"
    .end local v4    # "mList":Ljava/util/List;, "Ljava/util/List<Lnet/tsz/afinal/db/table/ManyToOne;>;"
    .end local v5    # "oList":Ljava/util/List;, "Ljava/util/List<Lnet/tsz/afinal/db/table/OneToMany;>;"
    :cond_9
    new-instance v3, Lnet/tsz/afinal/exception/DbException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "]\'s idField is null"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lnet/tsz/afinal/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 98
    .end local v2    # "idField":Ljava/lang/reflect/Field;
    :cond_a
    :goto_6
    if-eqz v0, :cond_b

    .line 101
    return-object v0

    .line 99
    :cond_b
    new-instance v2, Lnet/tsz/afinal/exception/DbException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]\'s table is null"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lnet/tsz/afinal/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 47
    .end local v0    # "tableInfo":Lnet/tsz/afinal/db/table/TableInfo;
    :cond_c
    new-instance v0, Lnet/tsz/afinal/exception/DbException;

    const-string v1, "table info get error,because the clazz is null"

    invoke-direct {v0, v1}, Lnet/tsz/afinal/exception/DbException;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method

.method public static get(Ljava/lang/String;)Lnet/tsz/afinal/db/table/TableInfo;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;

    .line 107
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lnet/tsz/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lnet/tsz/afinal/db/table/TableInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 111
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lnet/tsz/afinal/db/table/TableInfo;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Lnet/tsz/afinal/db/table/Id;
    .locals 1

    .line 132
    iget-object v0, p0, Lnet/tsz/afinal/db/table/TableInfo;->id:Lnet/tsz/afinal/db/table/Id;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lnet/tsz/afinal/db/table/TableInfo;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public isCheckDatabese()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lnet/tsz/afinal/db/table/TableInfo;->checkDatabese:Z

    return v0
.end method

.method public setCheckDatabese(Z)V
    .locals 0
    .param p1, "checkDatabese"    # Z

    .line 144
    iput-boolean p1, p0, Lnet/tsz/afinal/db/table/TableInfo;->checkDatabese:Z

    .line 145
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .line 120
    iput-object p1, p0, Lnet/tsz/afinal/db/table/TableInfo;->className:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setId(Lnet/tsz/afinal/db/table/Id;)V
    .locals 0
    .param p1, "id"    # Lnet/tsz/afinal/db/table/Id;

    .line 136
    iput-object p1, p0, Lnet/tsz/afinal/db/table/TableInfo;->id:Lnet/tsz/afinal/db/table/Id;

    .line 137
    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0
    .param p1, "tableName"    # Ljava/lang/String;

    .line 128
    iput-object p1, p0, Lnet/tsz/afinal/db/table/TableInfo;->tableName:Ljava/lang/String;

    .line 129
    return-void
.end method
