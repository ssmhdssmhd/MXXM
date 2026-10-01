.class public Lnet/tsz/afinal/db/table/Property;
.super Ljava/lang/Object;
.source "Property.java"


# static fields
.field private static sdf:Ljava/text/SimpleDateFormat;


# instance fields
.field private column:Ljava/lang/String;

.field private dataType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private defaultValue:Ljava/lang/String;

.field private field:Ljava/lang/reflect/Field;

.field private fieldName:Ljava/lang/String;

.field private get:Ljava/lang/reflect/Method;

.field private set:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 100
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/tsz/afinal/db/table/Property;->sdf:Ljava/text/SimpleDateFormat;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static stringToDateTime(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "strDate"    # Ljava/lang/String;

    .line 102
    if-eqz p0, :cond_0

    .line 104
    :try_start_0
    sget-object v0, Lnet/tsz/afinal/db/table/Property;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 109
    .end local v0    # "e":Ljava/text/ParseException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getColumn()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lnet/tsz/afinal/db/table/Property;->column:Ljava/lang/String;

    return-object v0
.end method

.method public getDataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lnet/tsz/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lnet/tsz/afinal/db/table/Property;->defaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public getField()Ljava/lang/reflect/Field;
    .locals 1

    .line 151
    iget-object v0, p0, Lnet/tsz/afinal/db/table/Property;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lnet/tsz/afinal/db/table/Property;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public getGet()Ljava/lang/reflect/Method;
    .locals 1

    .line 138
    iget-object v0, p0, Lnet/tsz/afinal/db/table/Property;->get:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getSet()Ljava/lang/reflect/Method;
    .locals 1

    .line 144
    iget-object v0, p0, Lnet/tsz/afinal/db/table/Property;->set:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 86
    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/tsz/afinal/db/table/Property;->get:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 88
    :try_start_0
    iget-object v0, p0, Lnet/tsz/afinal/db/table/Property;->get:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 91
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 89
    :catch_2
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 97
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setColumn(Ljava/lang/String;)V
    .locals 0
    .param p1, "column"    # Ljava/lang/String;

    .line 123
    iput-object p1, p0, Lnet/tsz/afinal/db/table/Property;->column:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setDataType(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 135
    .local p1, "dataType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lnet/tsz/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    .line 136
    return-void
.end method

.method public setDefaultValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultValue"    # Ljava/lang/String;

    .line 129
    iput-object p1, p0, Lnet/tsz/afinal/db/table/Property;->defaultValue:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setField(Ljava/lang/reflect/Field;)V
    .locals 0
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 155
    iput-object p1, p0, Lnet/tsz/afinal/db/table/Property;->field:Ljava/lang/reflect/Field;

    .line 156
    return-void
.end method

.method public setFieldName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 117
    iput-object p1, p0, Lnet/tsz/afinal/db/table/Property;->fieldName:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setGet(Ljava/lang/reflect/Method;)V
    .locals 0
    .param p1, "get"    # Ljava/lang/reflect/Method;

    .line 141
    iput-object p1, p0, Lnet/tsz/afinal/db/table/Property;->get:Ljava/lang/reflect/Method;

    .line 142
    return-void
.end method

.method public setSet(Ljava/lang/reflect/Method;)V
    .locals 0
    .param p1, "set"    # Ljava/lang/reflect/Method;

    .line 147
    iput-object p1, p0, Lnet/tsz/afinal/db/table/Property;->set:Ljava/lang/reflect/Method;

    .line 148
    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lnet/tsz/afinal/db/table/Property;->set:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    if-eqz p2, :cond_13

    .line 48
    :try_start_0
    iget-object v0, p0, Lnet/tsz/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 49
    iget-object v0, p0, Lnet/tsz/afinal/db/table/Property;->set:Ljava/lang/reflect/Method;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 50
    :cond_0
    iget-object v0, p0, Lnet/tsz/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    if-eq v0, v2, :cond_11

    iget-object v0, p0, Lnet/tsz/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    const-class v2, Ljava/lang/Integer;

    if-ne v0, v2, :cond_1

    goto/16 :goto_7

    .line 52
    :cond_1
    iget-object v0, p0, Lnet/tsz/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_f

    iget-object v0, p0, Lnet/tsz/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    if-ne v0, v2, :cond_2

    goto/16 :goto_6

    .line 54
    :cond_2
    iget-object v0, p0, Lnet/tsz/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_d

    iget-object v0, p0, Lnet/tsz/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    if-ne v0, v2, :cond_3

    goto/16 :goto_5

    .line 56
    :cond_3
    iget-object v0, p0, Lnet/tsz/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_b

    iget-object v0, p0, Lnet/tsz/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    const-class v2, Ljava/lang/Long;

    if-ne v0, v2, :cond_4

    goto :goto_4

    .line 58
    :cond_4
    iget-object v0, p0, Lnet/tsz/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    const-class v2, Ljava/util/Date;

    if-eq v0, v2, :cond_9

    iget-object v0, p0, Lnet/tsz/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    const-class v2, Ljava/sql/Date;

    if-ne v0, v2, :cond_5

    goto :goto_1

    .line 60
    :cond_5
    iget-object v0, p0, Lnet/tsz/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_7

    iget-object v0, p0, Lnet/tsz/afinal/db/table/Property;->dataType:Ljava/lang/Class;

    const-class v2, Ljava/lang/Boolean;

    if-ne v0, v2, :cond_6

    goto :goto_0

    .line 63
    :cond_6
    iget-object v0, p0, Lnet/tsz/afinal/db/table/Property;->set:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 61
    :cond_7
    :goto_0
    iget-object v0, p0, Lnet/tsz/afinal/db/table/Property;->set:Ljava/lang/reflect/Method;

    if-eqz p2, :cond_8

    const-string v2, "1"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    :cond_8
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .end local p1    # "receiver":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    throw v4

    .line 59
    .restart local p1    # "receiver":Ljava/lang/Object;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_9
    :goto_1
    iget-object v0, p0, Lnet/tsz/afinal/db/table/Property;->set:Ljava/lang/reflect/Method;

    if-nez p2, :cond_a

    :goto_2
    goto :goto_3

    :cond_a
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/tsz/afinal/db/table/Property;->stringToDateTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    goto :goto_2

    :goto_3
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v3

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 57
    :cond_b
    :goto_4
    iget-object v0, p0, Lnet/tsz/afinal/db/table/Property;->set:Ljava/lang/reflect/Method;

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_c
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .end local p1    # "receiver":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    throw v4

    .line 55
    .restart local p1    # "receiver":Ljava/lang/Object;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_d
    :goto_5
    iget-object v0, p0, Lnet/tsz/afinal/db/table/Property;->set:Ljava/lang/reflect/Method;

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_e
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .end local p1    # "receiver":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    throw v4

    .line 53
    .restart local p1    # "receiver":Ljava/lang/Object;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_f
    :goto_6
    iget-object v0, p0, Lnet/tsz/afinal/db/table/Property;->set:Ljava/lang/reflect/Method;

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_10
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .end local p1    # "receiver":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    throw v4

    .line 51
    .restart local p1    # "receiver":Ljava/lang/Object;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_11
    :goto_7
    iget-object v0, p0, Lnet/tsz/afinal/db/table/Property;->set:Ljava/lang/reflect/Method;

    if-eqz p2, :cond_12

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_12
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .end local p1    # "receiver":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .restart local p1    # "receiver":Ljava/lang/Object;
    .restart local p2    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_8

    .line 70
    :cond_13
    :try_start_1
    iget-object v0, p0, Lnet/tsz/afinal/db/table/Property;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 71
    iget-object v0, p0, Lnet/tsz/afinal/db/table/Property;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    .line 72
    :catch_1
    move-exception v0

    .line 73
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_8
    return-void
.end method
