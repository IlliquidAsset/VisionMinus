.class public Lcom/univocity/parsers/conversions/BooleanConversion;
.super Lcom/univocity/parsers/conversions/ObjectConversion;
.source "BooleanConversion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/univocity/parsers/conversions/ObjectConversion<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private defaultForFalse:Ljava/lang/String;

.field private defaultForTrue:Ljava/lang/String;

.field private final falseValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final trueValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/univocity/parsers/conversions/ObjectConversion;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/univocity/parsers/conversions/BooleanConversion;->falseValues:Ljava/util/Set;

    .line 39
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/univocity/parsers/conversions/BooleanConversion;->trueValues:Ljava/util/Set;

    const-string p1, "Values for true"

    .line 64
    invoke-static {p1, p3}, Lcom/univocity/parsers/common/ArgumentUtils;->notEmpty(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "Values for false"

    .line 65
    invoke-static {p1, p4}, Lcom/univocity/parsers/common/ArgumentUtils;->notEmpty(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    iget-object p1, p0, Lcom/univocity/parsers/conversions/BooleanConversion;->falseValues:Ljava/util/Set;

    invoke-static {p1, p4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 68
    iget-object p1, p0, Lcom/univocity/parsers/conversions/BooleanConversion;->trueValues:Ljava/util/Set;

    invoke-static {p1, p3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 70
    iget-object p1, p0, Lcom/univocity/parsers/conversions/BooleanConversion;->falseValues:Ljava/util/Set;

    invoke-static {p1}, Lcom/univocity/parsers/common/ArgumentUtils;->normalize(Ljava/util/Collection;)V

    .line 71
    iget-object p1, p0, Lcom/univocity/parsers/conversions/BooleanConversion;->trueValues:Ljava/util/Set;

    invoke-static {p1}, Lcom/univocity/parsers/common/ArgumentUtils;->normalize(Ljava/util/Collection;)V

    .line 73
    iget-object p1, p0, Lcom/univocity/parsers/conversions/BooleanConversion;->falseValues:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/univocity/parsers/conversions/BooleanConversion;->trueValues:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    new-instance p1, Lcom/univocity/parsers/common/DataProcessingException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Ambiguous string representation for both false and true values: \'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x27

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    .line 79
    aget-object p2, p3, p1

    iput-object p2, p0, Lcom/univocity/parsers/conversions/BooleanConversion;->defaultForTrue:Ljava/lang/String;

    .line 80
    aget-object p1, p4, p1

    iput-object p1, p0, Lcom/univocity/parsers/conversions/BooleanConversion;->defaultForFalse:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/univocity/parsers/conversions/BooleanConversion;-><init>(Ljava/lang/Boolean;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private static getBoolean(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 135
    invoke-static {p0}, Lcom/univocity/parsers/common/ArgumentUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 139
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 142
    :cond_1
    new-instance v0, Lcom/univocity/parsers/common/DataProcessingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to convert \'{value}\' to Boolean. Allowed Strings are: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for true; and "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for false."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/univocity/parsers/common/DataProcessingException;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0, p0}, Lcom/univocity/parsers/common/DataProcessingException;->setValue(Ljava/lang/Object;)V

    .line 144
    throw v0
.end method

.method public static getBoolean(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    if-eqz p1, :cond_0

    .line 128
    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    const-string p1, "true"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    :cond_1
    if-eqz p2, :cond_2

    .line 129
    array-length v0, p2

    if-nez v0, :cond_3

    :cond_2
    const-string p2, "false"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    .line 130
    :cond_3
    new-instance v0, Lcom/univocity/parsers/conversions/BooleanConversion;

    invoke-direct {v0, p1, p2}, Lcom/univocity/parsers/conversions/BooleanConversion;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    .line 131
    iget-object p1, v0, Lcom/univocity/parsers/conversions/BooleanConversion;->trueValues:Ljava/util/Set;

    iget-object p2, v0, Lcom/univocity/parsers/conversions/BooleanConversion;->falseValues:Ljava/util/Set;

    invoke-static {p0, p1, p2}, Lcom/univocity/parsers/conversions/BooleanConversion;->getBoolean(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected fromString(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    if-eqz p1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/univocity/parsers/conversions/BooleanConversion;->trueValues:Ljava/util/Set;

    iget-object v1, p0, Lcom/univocity/parsers/conversions/BooleanConversion;->falseValues:Ljava/util/Set;

    invoke-static {p1, v0, v1}, Lcom/univocity/parsers/conversions/BooleanConversion;->getBoolean(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 116
    :cond_0
    invoke-super {p0}, Lcom/univocity/parsers/conversions/ObjectConversion;->getValueIfStringIsNull()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method protected bridge synthetic fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/conversions/BooleanConversion;->fromString(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic revert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/conversions/BooleanConversion;->revert(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public revert(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    .line 94
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object p1, p0, Lcom/univocity/parsers/conversions/BooleanConversion;->defaultForFalse:Ljava/lang/String;

    return-object p1

    .line 97
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 98
    iget-object p1, p0, Lcom/univocity/parsers/conversions/BooleanConversion;->defaultForTrue:Ljava/lang/String;

    return-object p1

    .line 101
    :cond_1
    invoke-virtual {p0}, Lcom/univocity/parsers/conversions/BooleanConversion;->getValueIfObjectIsNull()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic revert(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 33
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/univocity/parsers/conversions/BooleanConversion;->revert(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
