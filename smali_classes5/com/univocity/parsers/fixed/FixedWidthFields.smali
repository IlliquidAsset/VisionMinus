.class public Lcom/univocity/parsers/fixed/FixedWidthFields;
.super Ljava/lang/Object;
.source "FixedWidthFields.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private fieldAlignment:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/univocity/parsers/fixed/FieldAlignment;",
            ">;"
        }
    .end annotation
.end field

.field private fieldLengths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private fieldNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fieldPadding:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private fieldsToIgnore:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private noNames:Z

.field private totalLength:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    sget-object v0, Lcom/univocity/parsers/annotations/helpers/MethodFilter;->ONLY_SETTERS:Lcom/univocity/parsers/annotations/helpers/MethodFilter;

    invoke-direct {p0, p1, v0}, Lcom/univocity/parsers/fixed/FixedWidthFields;-><init>(Ljava/lang/Class;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)V
    .locals 13

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldLengths:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldsToIgnore:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldNames:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldAlignment:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldPadding:Ljava/util/List;

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->noNames:Z

    const/4 v1, 0x0

    .line 38
    iput v1, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->totalLength:I

    if-eqz p1, :cond_8

    const/4 v1, 0x0

    .line 149
    invoke-static {p1, v0, v1, p2}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->getFieldSequence(Ljava/lang/Class;ZLcom/univocity/parsers/annotations/HeaderTransformer;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)Ljava/util/List;

    move-result-object p2

    .line 150
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "Can\'t derive fixed-width fields from class \'"

    if-nez v0, :cond_7

    .line 154
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 156
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "\'. "

    if-eqz v2, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;

    if-nez v2, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {v2}, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->getHeaderName()Ljava/lang/String;

    move-result-object v5

    .line 162
    invoke-virtual {v2}, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->getTarget()Ljava/lang/reflect/AnnotatedElement;

    move-result-object v4

    const-class v6, Lcom/univocity/parsers/annotations/FixedWidth;

    invoke-static {v4, v6}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->findAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/univocity/parsers/annotations/FixedWidth;

    if-nez v4, :cond_1

    .line 164
    invoke-virtual {v2}, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->getTargetName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 168
    :cond_1
    invoke-virtual {v2}, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->getTarget()Ljava/lang/reflect/AnnotatedElement;

    move-result-object v6

    invoke-interface {v4}, Lcom/univocity/parsers/annotations/FixedWidth;->value()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "value"

    invoke-static {v6, v4, v8, v7}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;->getValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 169
    invoke-virtual {v2}, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->getTarget()Ljava/lang/reflect/AnnotatedElement;

    move-result-object v7

    invoke-interface {v4}, Lcom/univocity/parsers/annotations/FixedWidth;->from()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "from"

    invoke-static {v7, v4, v9, v8}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;->getValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 170
    invoke-virtual {v2}, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->getTarget()Ljava/lang/reflect/AnnotatedElement;

    move-result-object v8

    invoke-interface {v4}, Lcom/univocity/parsers/annotations/FixedWidth;->to()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "to"

    invoke-static {v8, v4, v10, v9}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;->getValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 173
    invoke-virtual {v2}, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->getTarget()Ljava/lang/reflect/AnnotatedElement;

    move-result-object v9

    invoke-interface {v4}, Lcom/univocity/parsers/annotations/FixedWidth;->alignment()Lcom/univocity/parsers/fixed/FieldAlignment;

    move-result-object v10

    const-string v11, "alignment"

    invoke-static {v9, v4, v11, v10}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;->getValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/univocity/parsers/fixed/FieldAlignment;

    .line 174
    invoke-virtual {v2}, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->getTarget()Ljava/lang/reflect/AnnotatedElement;

    move-result-object v10

    invoke-interface {v4}, Lcom/univocity/parsers/annotations/FixedWidth;->padding()C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const-string v12, "padding"

    invoke-static {v10, v4, v12, v11}, Lcom/univocity/parsers/annotations/helpers/AnnotationRegistry;->getValue(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v10

    const-string v4, "Can\'t initialize fixed-width field from "

    const/4 v11, -0x1

    if-eq v6, v11, :cond_3

    if-ne v7, v11, :cond_2

    if-ne v8, v11, :cond_2

    .line 183
    invoke-virtual {p0, v5, v6, v9, v10}, Lcom/univocity/parsers/fixed/FixedWidthFields;->addField(Ljava/lang/String;ILcom/univocity/parsers/fixed/FieldAlignment;C)Lcom/univocity/parsers/fixed/FixedWidthFields;

    goto/16 :goto_0

    .line 178
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->describe()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Can\'t have field length ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") defined along with position from ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") and to ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    if-eq v7, v11, :cond_4

    if-eq v8, v11, :cond_4

    move-object v4, p0

    move v6, v7

    move v7, v8

    move-object v8, v9

    move v9, v10

    .line 185
    invoke-virtual/range {v4 .. v9}, Lcom/univocity/parsers/fixed/FixedWidthFields;->addField(Ljava/lang/String;IILcom/univocity/parsers/fixed/FieldAlignment;C)Lcom/univocity/parsers/fixed/FixedWidthFields;

    goto/16 :goto_0

    .line 187
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/univocity/parsers/annotations/helpers/TransformedHeader;->describe()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Field length/position undefined defined"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 192
    :cond_5
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p2

    if-gtz p2, :cond_6

    return-void

    .line 193
    :cond_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "The following fields don\'t have a @FixedWidth annotation: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 151
    :cond_7
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'. No @Parsed annotations found."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 146
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Class must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/util/LinkedHashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldLengths:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldsToIgnore:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldNames:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldAlignment:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldPadding:Ljava/util/List;

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->noNames:Z

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->totalLength:I

    if-eqz p1, :cond_1

    .line 47
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 52
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 53
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 54
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/univocity/parsers/fixed/FixedWidthFields;->addField(Ljava/lang/String;I)Lcom/univocity/parsers/fixed/FixedWidthFields;

    goto :goto_0

    :cond_0
    return-void

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Map of fields and their lengths cannot be null/empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs constructor <init>([I)V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldLengths:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldsToIgnore:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldNames:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldAlignment:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldPadding:Ljava/util/List;

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->noNames:Z

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->totalLength:I

    .line 87
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 88
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/univocity/parsers/fixed/FixedWidthFields;->addField(I)Lcom/univocity/parsers/fixed/FixedWidthFields;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[I)V
    .locals 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldLengths:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldsToIgnore:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldNames:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldAlignment:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldPadding:Ljava/util/List;

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->noNames:Z

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->totalLength:I

    if-eqz p1, :cond_3

    .line 66
    array-length v1, p1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_2

    .line 69
    array-length v1, p2

    if-eqz v1, :cond_2

    .line 72
    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_1

    .line 76
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 77
    aget-object v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lcom/univocity/parsers/fixed/FixedWidthFields;->addField(Ljava/lang/String;I)Lcom/univocity/parsers/fixed/FixedWidthFields;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 73
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sequence of headers and their respective lengths must match. Got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " headers but "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " lengths"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field lengths cannot be null/empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Headers cannot be null/empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static forParsing(Ljava/lang/Class;)Lcom/univocity/parsers/fixed/FixedWidthFields;
    .locals 2

    .line 118
    new-instance v0, Lcom/univocity/parsers/fixed/FixedWidthFields;

    sget-object v1, Lcom/univocity/parsers/annotations/helpers/MethodFilter;->ONLY_SETTERS:Lcom/univocity/parsers/annotations/helpers/MethodFilter;

    invoke-direct {v0, p0, v1}, Lcom/univocity/parsers/fixed/FixedWidthFields;-><init>(Ljava/lang/Class;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)V

    return-object v0
.end method

.method public static forWriting(Ljava/lang/Class;)Lcom/univocity/parsers/fixed/FixedWidthFields;
    .locals 2

    .line 132
    new-instance v0, Lcom/univocity/parsers/fixed/FixedWidthFields;

    sget-object v1, Lcom/univocity/parsers/annotations/helpers/MethodFilter;->ONLY_GETTERS:Lcom/univocity/parsers/annotations/helpers/MethodFilter;

    invoke-direct {v0, p0, v1}, Lcom/univocity/parsers/fixed/FixedWidthFields;-><init>(Ljava/lang/Class;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)V

    return-object v0
.end method

.method private getSelectedElements(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 479
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 480
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 481
    iget-object v2, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldsToIgnore:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 482
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private setAlignment(ILcom/univocity/parsers/fixed/FieldAlignment;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 592
    invoke-direct {p0, p1}, Lcom/univocity/parsers/fixed/FixedWidthFields;->validateIndex(I)V

    .line 593
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldAlignment:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 590
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Alignment cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static setHeadersIfPossible(Lcom/univocity/parsers/fixed/FixedWidthFields;Lcom/univocity/parsers/common/CommonSettings;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 707
    invoke-virtual {p1}, Lcom/univocity/parsers/common/CommonSettings;->getHeaders()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 708
    invoke-virtual {p0}, Lcom/univocity/parsers/fixed/FixedWidthFields;->getFieldNames()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 710
    invoke-virtual {p0}, Lcom/univocity/parsers/fixed/FixedWidthFields;->getFieldLengths()[I

    move-result-object p0

    .line 711
    array-length p0, p0

    array-length v1, v0

    if-ne p0, v1, :cond_0

    .line 712
    invoke-virtual {p1, v0}, Lcom/univocity/parsers/common/CommonSettings;->setHeaders([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setPadding(IC)V
    .locals 1

    if-eqz p2, :cond_0

    .line 683
    invoke-direct {p0, p1}, Lcom/univocity/parsers/fixed/FixedWidthFields;->validateIndex(I)V

    .line 684
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldPadding:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 681
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot use the null character as padding"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private validateIndex(I)V
    .locals 3

    if-gez p1, :cond_1

    .line 557
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldLengths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 558
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No field defined at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private validateLength(Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x1

    if-ge p2, v0, :cond_1

    const-string v0, "Invalid field length: "

    if-nez p1, :cond_0

    .line 449
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " for field at index "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldLengths:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 451
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " for field "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method


# virtual methods
.method public addField(I)Lcom/univocity/parsers/fixed/FixedWidthFields;
    .locals 3

    .line 344
    sget-object v0, Lcom/univocity/parsers/fixed/FieldAlignment;->LEFT:Lcom/univocity/parsers/fixed/FieldAlignment;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/univocity/parsers/fixed/FixedWidthFields;->addField(Ljava/lang/String;ILcom/univocity/parsers/fixed/FieldAlignment;C)Lcom/univocity/parsers/fixed/FixedWidthFields;

    move-result-object p1

    return-object p1
.end method

.method public addField(IC)Lcom/univocity/parsers/fixed/FixedWidthFields;
    .locals 2

    .line 393
    sget-object v0, Lcom/univocity/parsers/fixed/FieldAlignment;->LEFT:Lcom/univocity/parsers/fixed/FieldAlignment;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0, p2}, Lcom/univocity/parsers/fixed/FixedWidthFields;->addField(Ljava/lang/String;ILcom/univocity/parsers/fixed/FieldAlignment;C)Lcom/univocity/parsers/fixed/FixedWidthFields;

    move-result-object p1

    return-object p1
.end method

.method public addField(II)Lcom/univocity/parsers/fixed/FixedWidthFields;
    .locals 6

    .line 209
    sget-object v4, Lcom/univocity/parsers/fixed/FieldAlignment;->LEFT:Lcom/univocity/parsers/fixed/FieldAlignment;

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/univocity/parsers/fixed/FixedWidthFields;->addField(Ljava/lang/String;IILcom/univocity/parsers/fixed/FieldAlignment;C)Lcom/univocity/parsers/fixed/FixedWidthFields;

    move-result-object p1

    return-object p1
.end method

.method public addField(IIC)Lcom/univocity/parsers/fixed/FixedWidthFields;
    .locals 6

    .line 297
    sget-object v4, Lcom/univocity/parsers/fixed/FieldAlignment;->LEFT:Lcom/univocity/parsers/fixed/FieldAlignment;

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/univocity/parsers/fixed/FixedWidthFields;->addField(Ljava/lang/String;IILcom/univocity/parsers/fixed/FieldAlignment;C)Lcom/univocity/parsers/fixed/FixedWidthFields;

    move-result-object p1

    return-object p1
.end method

.method public addField(IILcom/univocity/parsers/fixed/FieldAlignment;)Lcom/univocity/parsers/fixed/FixedWidthFields;
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    .line 267
    invoke-virtual/range {v0 .. v5}, Lcom/univocity/parsers/fixed/FixedWidthFields;->addField(Ljava/lang/String;IILcom/univocity/parsers/fixed/FieldAlignment;C)Lcom/univocity/parsers/fixed/FixedWidthFields;

    move-result-object p1

    return-object p1
.end method

.method public addField(IILcom/univocity/parsers/fixed/FieldAlignment;C)Lcom/univocity/parsers/fixed/FixedWidthFields;
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    .line 283
    invoke-virtual/range {v0 .. v5}, Lcom/univocity/parsers/fixed/FixedWidthFields;->addField(Ljava/lang/String;IILcom/univocity/parsers/fixed/FieldAlignment;C)Lcom/univocity/parsers/fixed/FixedWidthFields;

    move-result-object p1

    return-object p1
.end method

.method public addField(ILcom/univocity/parsers/fixed/FieldAlignment;)Lcom/univocity/parsers/fixed/FixedWidthFields;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 356
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/univocity/parsers/fixed/FixedWidthFields;->addField(Ljava/lang/String;ILcom/univocity/parsers/fixed/FieldAlignment;C)Lcom/univocity/parsers/fixed/FixedWidthFields;

    move-result-object p1

    return-object p1
.end method

.method public addField(ILcom/univocity/parsers/fixed/FieldAlignment;C)Lcom/univocity/parsers/fixed/FixedWidthFields;
    .locals 1

    const/4 v0, 0x0

    .line 406
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/univocity/parsers/fixed/FixedWidthFields;->addField(Ljava/lang/String;ILcom/univocity/parsers/fixed/FieldAlignment;C)Lcom/univocity/parsers/fixed/FixedWidthFields;

    move-result-object p1

    return-object p1
.end method

.method public addField(Ljava/lang/String;I)Lcom/univocity/parsers/fixed/FixedWidthFields;
    .locals 2

    .line 368
    sget-object v0, Lcom/univocity/parsers/fixed/FieldAlignment;->LEFT:Lcom/univocity/parsers/fixed/FieldAlignment;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/univocity/parsers/fixed/FixedWidthFields;->addField(Ljava/lang/String;ILcom/univocity/parsers/fixed/FieldAlignment;C)Lcom/univocity/parsers/fixed/FixedWidthFields;

    move-result-object p1

    return-object p1
.end method

.method public addField(Ljava/lang/String;IC)Lcom/univocity/parsers/fixed/FixedWidthFields;
    .locals 1

    .line 419
    sget-object v0, Lcom/univocity/parsers/fixed/FieldAlignment;->LEFT:Lcom/univocity/parsers/fixed/FieldAlignment;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/univocity/parsers/fixed/FixedWidthFields;->addField(Ljava/lang/String;ILcom/univocity/parsers/fixed/FieldAlignment;C)Lcom/univocity/parsers/fixed/FixedWidthFields;

    move-result-object p1

    return-object p1
.end method

.method public addField(Ljava/lang/String;II)Lcom/univocity/parsers/fixed/FixedWidthFields;
    .locals 6

    .line 223
    sget-object v4, Lcom/univocity/parsers/fixed/FieldAlignment;->LEFT:Lcom/univocity/parsers/fixed/FieldAlignment;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/univocity/parsers/fixed/FixedWidthFields;->addField(Ljava/lang/String;IILcom/univocity/parsers/fixed/FieldAlignment;C)Lcom/univocity/parsers/fixed/FixedWidthFields;

    move-result-object p1

    return-object p1
.end method

.method public addField(Ljava/lang/String;IIC)Lcom/univocity/parsers/fixed/FixedWidthFields;
    .locals 6

    .line 238
    sget-object v4, Lcom/univocity/parsers/fixed/FieldAlignment;->LEFT:Lcom/univocity/parsers/fixed/FieldAlignment;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/univocity/parsers/fixed/FixedWidthFields;->addField(Ljava/lang/String;IILcom/univocity/parsers/fixed/FieldAlignment;C)Lcom/univocity/parsers/fixed/FixedWidthFields;

    move-result-object p1

    return-object p1
.end method

.method public addField(Ljava/lang/String;IILcom/univocity/parsers/fixed/FieldAlignment;)Lcom/univocity/parsers/fixed/FixedWidthFields;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 253
    invoke-virtual/range {v0 .. v5}, Lcom/univocity/parsers/fixed/FixedWidthFields;->addField(Ljava/lang/String;IILcom/univocity/parsers/fixed/FieldAlignment;C)Lcom/univocity/parsers/fixed/FixedWidthFields;

    move-result-object p1

    return-object p1
.end method

.method public addField(Ljava/lang/String;IILcom/univocity/parsers/fixed/FieldAlignment;C)Lcom/univocity/parsers/fixed/FixedWidthFields;
    .locals 3

    sub-int/2addr p3, p2

    .line 314
    iget v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->totalLength:I

    if-lt p2, v0, :cond_1

    if-le p2, v0, :cond_0

    const/4 v1, 0x0

    sub-int/2addr p2, v0

    .line 317
    sget-object v0, Lcom/univocity/parsers/fixed/FieldAlignment;->LEFT:Lcom/univocity/parsers/fixed/FieldAlignment;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v0, v2}, Lcom/univocity/parsers/fixed/FixedWidthFields;->addField(Ljava/lang/String;ILcom/univocity/parsers/fixed/FieldAlignment;C)Lcom/univocity/parsers/fixed/FixedWidthFields;

    .line 318
    iget-object p2, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldsToIgnore:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 320
    :cond_0
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/univocity/parsers/fixed/FixedWidthFields;->addField(Ljava/lang/String;ILcom/univocity/parsers/fixed/FieldAlignment;C)Lcom/univocity/parsers/fixed/FixedWidthFields;

    move-result-object p1

    return-object p1

    .line 315
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Start position \'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\' overlaps with one or more fields"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addField(Ljava/lang/String;ILcom/univocity/parsers/fixed/FieldAlignment;)Lcom/univocity/parsers/fixed/FixedWidthFields;
    .locals 1

    const/4 v0, 0x0

    .line 381
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/univocity/parsers/fixed/FixedWidthFields;->addField(Ljava/lang/String;ILcom/univocity/parsers/fixed/FieldAlignment;C)Lcom/univocity/parsers/fixed/FixedWidthFields;

    move-result-object p1

    return-object p1
.end method

.method public addField(Ljava/lang/String;ILcom/univocity/parsers/fixed/FieldAlignment;C)Lcom/univocity/parsers/fixed/FixedWidthFields;
    .locals 2

    .line 433
    invoke-direct {p0, p1, p2}, Lcom/univocity/parsers/fixed/FixedWidthFields;->validateLength(Ljava/lang/String;I)V

    .line 434
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldLengths:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldsToIgnore:Ljava/util/List;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldPadding:Ljava/util/List;

    invoke-static {p4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p4

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 439
    iput-boolean p1, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->noNames:Z

    .line 441
    :cond_0
    iget-object p1, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldAlignment:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    iget p1, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->totalLength:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->totalLength:I

    return-object p0
.end method

.method protected clone()Lcom/univocity/parsers/fixed/FixedWidthFields;
    .locals 3

    .line 721
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/fixed/FixedWidthFields;

    .line 722
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldLengths:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldLengths:Ljava/util/List;

    .line 723
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldNames:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldNames:Ljava/util/List;

    .line 724
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldAlignment:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldAlignment:Ljava/util/List;

    .line 725
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldPadding:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldPadding:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 728
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lcom/univocity/parsers/fixed/FixedWidthFields;->clone()Lcom/univocity/parsers/fixed/FixedWidthFields;

    move-result-object v0

    return-object v0
.end method

.method public getAlignment(I)Lcom/univocity/parsers/fixed/FieldAlignment;
    .locals 1

    .line 604
    invoke-direct {p0, p1}, Lcom/univocity/parsers/fixed/FixedWidthFields;->validateIndex(I)V

    .line 605
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldAlignment:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/univocity/parsers/fixed/FieldAlignment;

    return-object p1
.end method

.method public getAlignment(Ljava/lang/String;)Lcom/univocity/parsers/fixed/FieldAlignment;
    .locals 3

    .line 616
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/fixed/FixedWidthFields;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 620
    invoke-virtual {p0, v0}, Lcom/univocity/parsers/fixed/FixedWidthFields;->getAlignment(I)Lcom/univocity/parsers/fixed/FieldAlignment;

    move-result-object p1

    return-object p1

    .line 618
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist. Available field names are: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldNames:Ljava/util/List;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getAllLengths()[I
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldLengths:Ljava/util/List;

    invoke-static {v0}, Lcom/univocity/parsers/common/ArgumentUtils;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v0

    return-object v0
.end method

.method public getFieldAlignments()[Lcom/univocity/parsers/fixed/FieldAlignment;
    .locals 2

    .line 629
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldAlignment:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/univocity/parsers/fixed/FieldAlignment;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/univocity/parsers/fixed/FieldAlignment;

    return-object v0
.end method

.method public getFieldLengths()[I
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldLengths:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/univocity/parsers/fixed/FixedWidthFields;->getSelectedElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/univocity/parsers/common/ArgumentUtils;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v0

    return-object v0
.end method

.method public getFieldNames()[Ljava/lang/String;
    .locals 2

    .line 472
    iget-boolean v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->noNames:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldNames:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/univocity/parsers/fixed/FixedWidthFields;->getSelectedElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/univocity/parsers/common/ArgumentUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getFieldPaddings()[C
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldPadding:Ljava/util/List;

    invoke-static {v0}, Lcom/univocity/parsers/common/ArgumentUtils;->toCharArray(Ljava/util/Collection;)[C

    move-result-object v0

    return-object v0
.end method

.method getFieldPaddings(Lcom/univocity/parsers/fixed/FixedWidthFormat;)[C
    .locals 3

    .line 645
    invoke-virtual {p0}, Lcom/univocity/parsers/fixed/FixedWidthFields;->getFieldPaddings()[C

    move-result-object v0

    const/4 v1, 0x0

    .line 646
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 647
    aget-char v2, v0, v1

    if-nez v2, :cond_0

    .line 648
    invoke-virtual {p1}, Lcom/univocity/parsers/fixed/FixedWidthFormat;->getPadding()C

    move-result v2

    aput-char v2, v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getFieldsPerRecord()I
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldLengths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method getFieldsToIgnore()[Z
    .locals 3

    .line 329
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldsToIgnore:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    .line 330
    :goto_0
    iget-object v2, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldsToIgnore:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 331
    iget-object v2, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldsToIgnore:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 3

    .line 570
    iget-boolean v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->noNames:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    .line 573
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 576
    invoke-static {p1}, Lcom/univocity/parsers/common/ArgumentUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 578
    iget-object v1, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 579
    invoke-static {v2}, Lcom/univocity/parsers/common/ArgumentUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 580
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1

    .line 574
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Field name cannot be null/empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 571
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No field names defined"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs setAlignment(Lcom/univocity/parsers/fixed/FieldAlignment;[I)V
    .locals 3

    .line 538
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p2, v1

    .line 539
    invoke-direct {p0, v2, p1}, Lcom/univocity/parsers/fixed/FixedWidthFields;->setAlignment(ILcom/univocity/parsers/fixed/FieldAlignment;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs setAlignment(Lcom/univocity/parsers/fixed/FieldAlignment;[Ljava/lang/String;)V
    .locals 3

    .line 550
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 551
    invoke-virtual {p0, v2}, Lcom/univocity/parsers/fixed/FixedWidthFields;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 552
    invoke-direct {p0, v2, p1}, Lcom/univocity/parsers/fixed/FixedWidthFields;->setAlignment(ILcom/univocity/parsers/fixed/FieldAlignment;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setFieldLength(II)V
    .locals 2

    .line 526
    invoke-direct {p0, p1}, Lcom/univocity/parsers/fixed/FixedWidthFields;->validateIndex(I)V

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/univocity/parsers/fixed/FixedWidthFields;->validateLength(Ljava/lang/String;I)V

    .line 528
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldLengths:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setFieldLength(Ljava/lang/String;I)V
    .locals 2

    if-eqz p1, :cond_1

    .line 511
    iget-object v0, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 515
    invoke-direct {p0, p1, p2}, Lcom/univocity/parsers/fixed/FixedWidthFields;->validateLength(Ljava/lang/String;I)V

    .line 516
    iget-object p1, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldLengths:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 513
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find field with name \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 509
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field name cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs setPadding(C[I)V
    .locals 3

    .line 661
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p2, v1

    .line 662
    invoke-direct {p0, v2, p1}, Lcom/univocity/parsers/fixed/FixedWidthFields;->setPadding(IC)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs setPadding(C[Ljava/lang/String;)V
    .locals 3

    .line 673
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 674
    invoke-virtual {p0, v2}, Lcom/univocity/parsers/fixed/FixedWidthFields;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 675
    invoke-direct {p0, v2, p1}, Lcom/univocity/parsers/fixed/FixedWidthFields;->setPadding(IC)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 692
    iget-object v1, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldLengths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const-string v4, "\n\t\t"

    .line 693
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x9

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 694
    iget-object v5, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldNames:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 695
    iget-object v5, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldNames:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v5, ", length: "

    .line 697
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", align: "

    .line 698
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldAlignment:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", padding: "

    .line 699
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/univocity/parsers/fixed/FixedWidthFields;->fieldPadding:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v2, v4

    goto :goto_0

    .line 703
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
