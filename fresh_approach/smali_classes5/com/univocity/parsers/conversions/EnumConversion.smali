.class public Lcom/univocity/parsers/conversions/EnumConversion;
.super Lcom/univocity/parsers/conversions/ObjectConversion;
.source "EnumConversion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum<",
        "TT;>;>",
        "Lcom/univocity/parsers/conversions/ObjectConversion<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final conversions:[Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final customEnumField:Ljava/lang/reflect/Field;

.field private final customEnumMethod:Ljava/lang/reflect/Method;

.field private final enumType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final selectors:[Lcom/univocity/parsers/conversions/EnumSelector;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/univocity/parsers/conversions/EnumSelector;

    .line 56
    sget-object v1, Lcom/univocity/parsers/conversions/EnumSelector;->NAME:Lcom/univocity/parsers/conversions/EnumSelector;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/univocity/parsers/conversions/EnumSelector;->ORDINAL:Lcom/univocity/parsers/conversions/EnumSelector;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/univocity/parsers/conversions/EnumSelector;->STRING:Lcom/univocity/parsers/conversions/EnumSelector;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v0}, Lcom/univocity/parsers/conversions/EnumConversion;-><init>(Ljava/lang/Class;[Lcom/univocity/parsers/conversions/EnumSelector;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Class;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;[Lcom/univocity/parsers/conversions/EnumSelector;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Lcom/univocity/parsers/conversions/EnumSelector;",
            ")V"
        }
    .end annotation

    const-string v0, "Custom method \'"

    const-string v1, "\' in enumeration type "

    .line 97
    invoke-direct {p0, p2, p3}, Lcom/univocity/parsers/conversions/ObjectConversion;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iput-object p1, p0, Lcom/univocity/parsers/conversions/EnumConversion;->enumType:Ljava/lang/Class;

    const/4 p2, 0x0

    if-eqz p4, :cond_0

    .line 101
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    .line 102
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    move-object p4, p2

    .line 107
    :cond_0
    new-instance p3, Ljava/util/LinkedHashSet;

    invoke-direct {p3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 108
    invoke-static {p3, p5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 110
    sget-object p5, Lcom/univocity/parsers/conversions/EnumSelector;->CUSTOM_FIELD:Lcom/univocity/parsers/conversions/EnumSelector;

    invoke-virtual {p3, p5}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_1

    sget-object p5, Lcom/univocity/parsers/conversions/EnumSelector;->CUSTOM_METHOD:Lcom/univocity/parsers/conversions/EnumSelector;

    invoke-virtual {p3, p5}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_2

    :cond_1
    if-eqz p4, :cond_15

    :cond_2
    if-eqz p4, :cond_11

    const/4 p5, 0x1

    .line 121
    :try_start_0
    invoke-virtual {p1, p4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 122
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v3

    if-nez v3, :cond_3

    .line 123
    invoke-virtual {v2, p5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    move-object v4, p2

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_0

    :catchall_1
    move-exception v3

    move-object v2, p2

    .line 126
    :goto_0
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to access custom field \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    if-nez v2, :cond_8

    const/4 v3, 0x0

    :try_start_2
    new-array v5, v3, [Ljava/lang/Class;

    .line 132
    invoke-virtual {p1, p4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p5

    goto/16 :goto_3

    :catch_0
    :try_start_3
    new-array v5, p5, [Ljava/lang/Class;

    .line 134
    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-virtual {p1, p4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 135
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 138
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    if-ne v5, p1, :cond_4

    .line 142
    :goto_2
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v5

    if-nez v5, :cond_6

    .line 143
    invoke-virtual {v3, p5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    goto/16 :goto_4

    :catchall_3
    move-exception p5

    move-object p2, v3

    goto :goto_3

    .line 139
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p5, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " must return "

    invoke-virtual {p5, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p5, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p2, p5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 136
    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p5, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " must be static"

    invoke-virtual {p5, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p2, p5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 146
    :goto_3
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to access custom method \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, p5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v7, v3

    move-object v3, p2

    move-object p2, v7

    :cond_6
    :goto_4
    if-eqz v3, :cond_a

    .line 149
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p5

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p5, v5, :cond_7

    .line 152
    sget-object p5, Lcom/univocity/parsers/conversions/EnumSelector;->CUSTOM_METHOD:Lcom/univocity/parsers/conversions/EnumSelector;

    invoke-virtual {p3, p5}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_a

    .line 153
    sget-object p5, Lcom/univocity/parsers/conversions/EnumSelector;->CUSTOM_METHOD:Lcom/univocity/parsers/conversions/EnumSelector;

    invoke-virtual {p3, p5}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 150
    :cond_7
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must return a value"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 156
    :cond_8
    sget-object p5, Lcom/univocity/parsers/conversions/EnumSelector;->CUSTOM_FIELD:Lcom/univocity/parsers/conversions/EnumSelector;

    invoke-virtual {p3, p5}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_9

    .line 157
    sget-object p5, Lcom/univocity/parsers/conversions/EnumSelector;->CUSTOM_FIELD:Lcom/univocity/parsers/conversions/EnumSelector;

    invoke-virtual {p3, p5}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_9
    move-object v3, p2

    .line 160
    :cond_a
    :goto_5
    sget-object p5, Lcom/univocity/parsers/conversions/EnumSelector;->CUSTOM_FIELD:Lcom/univocity/parsers/conversions/EnumSelector;

    invoke-virtual {p3, p5}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_c

    if-nez v4, :cond_b

    goto :goto_6

    .line 161
    :cond_b
    throw v4

    .line 163
    :cond_c
    :goto_6
    sget-object p5, Lcom/univocity/parsers/conversions/EnumSelector;->CUSTOM_METHOD:Lcom/univocity/parsers/conversions/EnumSelector;

    invoke-virtual {p3, p5}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_e

    if-nez p2, :cond_d

    goto :goto_7

    .line 164
    :cond_d
    throw p2

    :cond_e
    :goto_7
    if-nez v2, :cond_10

    if-eqz v3, :cond_f

    goto :goto_8

    .line 167
    :cond_f
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "No method/field named \'"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\' found in enumeration type "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_10
    :goto_8
    move-object p2, v2

    goto :goto_9

    :cond_11
    move-object v3, p2

    .line 171
    :goto_9
    sget-object p1, Lcom/univocity/parsers/conversions/EnumSelector;->CUSTOM_FIELD:Lcom/univocity/parsers/conversions/EnumSelector;

    invoke-virtual {p3, p1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    sget-object p1, Lcom/univocity/parsers/conversions/EnumSelector;->CUSTOM_METHOD:Lcom/univocity/parsers/conversions/EnumSelector;

    invoke-virtual {p3, p1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_a

    .line 172
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot create custom enum conversion using both method and field values"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 175
    :cond_13
    :goto_a
    invoke-virtual {p3}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_14

    .line 179
    iput-object p2, p0, Lcom/univocity/parsers/conversions/EnumConversion;->customEnumField:Ljava/lang/reflect/Field;

    .line 180
    iput-object v3, p0, Lcom/univocity/parsers/conversions/EnumConversion;->customEnumMethod:Ljava/lang/reflect/Method;

    .line 181
    invoke-virtual {p3}, Ljava/util/LinkedHashSet;->size()I

    move-result p1

    new-array p1, p1, [Lcom/univocity/parsers/conversions/EnumSelector;

    invoke-virtual {p3, p1}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/univocity/parsers/conversions/EnumSelector;

    iput-object p1, p0, Lcom/univocity/parsers/conversions/EnumConversion;->selectors:[Lcom/univocity/parsers/conversions/EnumSelector;

    .line 182
    invoke-virtual {p3}, Ljava/util/LinkedHashSet;->size()I

    move-result p1

    new-array p1, p1, [Ljava/util/Map;

    iput-object p1, p0, Lcom/univocity/parsers/conversions/EnumConversion;->conversions:[Ljava/util/Map;

    .line 183
    invoke-direct {p0, p3}, Lcom/univocity/parsers/conversions/EnumConversion;->initializeMappings(Ljava/util/Set;)V

    return-void

    .line 176
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Selection of enum conversion types cannot be empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 111
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot create custom enum conversion without a field name to use"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Lcom/univocity/parsers/conversions/EnumSelector;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "[",
            "Lcom/univocity/parsers/conversions/EnumSelector;",
            ")V"
        }
    .end annotation

    const/4 p3, 0x0

    new-array v5, p3, [Lcom/univocity/parsers/conversions/EnumSelector;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    .line 81
    invoke-direct/range {v0 .. v5}, Lcom/univocity/parsers/conversions/EnumConversion;-><init>(Ljava/lang/Class;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;[Lcom/univocity/parsers/conversions/EnumSelector;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Class;[Lcom/univocity/parsers/conversions/EnumSelector;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/univocity/parsers/conversions/EnumSelector;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 68
    invoke-direct/range {v0 .. v5}, Lcom/univocity/parsers/conversions/EnumConversion;-><init>(Ljava/lang/Class;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;[Lcom/univocity/parsers/conversions/EnumSelector;)V

    return-void
.end method

.method private getKey(Ljava/lang/Enum;Lcom/univocity/parsers/conversions/EnumSelector;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/univocity/parsers/conversions/EnumSelector;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 206
    sget-object v0, Lcom/univocity/parsers/conversions/EnumConversion$1;->$SwitchMap$com$univocity$parsers$conversions$EnumSelector:[I

    invoke-virtual {p2}, Lcom/univocity/parsers/conversions/EnumSelector;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    const-string v2, "\' of type "

    const-string v3, "\' from enumeration constant \'"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 221
    :try_start_0
    iget-object p2, p0, Lcom/univocity/parsers/conversions/EnumConversion;->customEnumMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p2

    array-length p2, p2

    if-nez p2, :cond_0

    .line 222
    iget-object p2, p0, Lcom/univocity/parsers/conversions/EnumConversion;->customEnumMethod:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p2

    .line 227
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading custom method \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/univocity/parsers/conversions/EnumConversion;->customEnumMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/univocity/parsers/conversions/EnumConversion;->enumType:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 230
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported enumeration selector type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 215
    :cond_2
    :try_start_1
    iget-object p2, p0, Lcom/univocity/parsers/conversions/EnumConversion;->customEnumField:Ljava/lang/reflect/Field;

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p1

    :catchall_1
    move-exception p2

    .line 217
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading custom field \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/univocity/parsers/conversions/EnumConversion;->customEnumField:Ljava/lang/reflect/Field;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/univocity/parsers/conversions/EnumConversion;->enumType:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 212
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 210
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 208
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initializeMappings(Ljava/util/Set;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/univocity/parsers/conversions/EnumSelector;",
            ">;)V"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/univocity/parsers/conversions/EnumConversion;->enumType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    .line 189
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/univocity/parsers/conversions/EnumSelector;

    .line 190
    new-instance v4, Ljava/util/HashMap;

    array-length v5, v0

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 191
    iget-object v5, p0, Lcom/univocity/parsers/conversions/EnumConversion;->conversions:[Ljava/util/Map;

    add-int/lit8 v6, v2, 0x1

    aput-object v4, v5, v2

    .line 192
    array-length v2, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_2

    aget-object v7, v0, v5

    .line 193
    invoke-direct {p0, v7, v3}, Lcom/univocity/parsers/conversions/EnumConversion;->getKey(Ljava/lang/Enum;Lcom/univocity/parsers/conversions/EnumSelector;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 195
    invoke-interface {v4, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 199
    invoke-interface {v4, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 196
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enumeration element type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " does not uniquely identify elements of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/univocity/parsers/conversions/EnumConversion;->enumType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Got duplicate value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' from constants \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' and \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move v2, v6

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method protected fromString(Ljava/lang/String;)Ljava/lang/Enum;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/univocity/parsers/conversions/EnumConversion;->conversions:[Ljava/util/Map;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 246
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Enum;

    if-eqz v4, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/univocity/parsers/conversions/EnumConversion;->customEnumMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    const-string v1, "Cannot convert \'{value}\' to enumeration of type "

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/univocity/parsers/conversions/EnumConversion;->customEnumMethod:Ljava/lang/reflect/Method;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 258
    new-instance v3, Lcom/univocity/parsers/common/DataProcessingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/univocity/parsers/conversions/EnumConversion;->enumType:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " using method "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/univocity/parsers/conversions/EnumConversion;->customEnumMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    if-nez v3, :cond_3

    .line 262
    new-instance v3, Lcom/univocity/parsers/common/DataProcessingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/univocity/parsers/conversions/EnumConversion;->enumType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;)V

    .line 264
    :cond_3
    invoke-virtual {v3, p1}, Lcom/univocity/parsers/common/DataProcessingException;->setValue(Ljava/lang/Object;)V

    .line 265
    invoke-virtual {v3}, Lcom/univocity/parsers/common/DataProcessingException;->markAsNonFatal()V

    .line 266
    throw v3
.end method

.method protected bridge synthetic fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/conversions/EnumConversion;->fromString(Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic revert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/conversions/EnumConversion;->revert(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public revert(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 237
    invoke-super {p0, p1}, Lcom/univocity/parsers/conversions/ObjectConversion;->revert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/conversions/EnumConversion;->selectors:[Lcom/univocity/parsers/conversions/EnumSelector;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/univocity/parsers/conversions/EnumConversion;->getKey(Ljava/lang/Enum;Lcom/univocity/parsers/conversions/EnumSelector;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic revert(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 39
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/conversions/EnumConversion;->revert(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
