.class Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;
.super Ljava/lang/Object;
.source "OutputValueSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/univocity/parsers/common/processor/OutputValueSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Switch"
.end annotation


# instance fields
.field final headers:[Ljava/lang/String;

.field final indexes:[I

.field final processor:Lcom/univocity/parsers/common/processor/RowWriterProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/univocity/parsers/common/processor/RowWriterProcessor<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/univocity/parsers/common/processor/RowWriterProcessor;[Ljava/lang/String;[ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/univocity/parsers/common/processor/RowWriterProcessor<",
            "[",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/String;",
            "[I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput-object p1, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;->processor:Lcom/univocity/parsers/common/processor/RowWriterProcessor;

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 340
    array-length v0, p2

    if-nez v0, :cond_1

    :cond_0
    move-object p2, p1

    :cond_1
    iput-object p2, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;->headers:[Ljava/lang/String;

    if-eqz p3, :cond_2

    .line 341
    array-length p2, p3

    if-nez p2, :cond_3

    :cond_2
    move-object p3, p1

    :cond_3
    iput-object p3, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;->indexes:[I

    .line 342
    iput-object p4, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;->value:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>([Ljava/lang/String;[ILjava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[I",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    new-instance v0, Lcom/univocity/parsers/common/processor/BeanWriterProcessor;

    invoke-direct {v0, p3}, Lcom/univocity/parsers/common/processor/BeanWriterProcessor;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;->processor:Lcom/univocity/parsers/common/processor/RowWriterProcessor;

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 349
    sget-object p1, Lcom/univocity/parsers/annotations/helpers/MethodFilter;->ONLY_GETTERS:Lcom/univocity/parsers/annotations/helpers/MethodFilter;

    invoke-static {p3, p1}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->deriveHeaderNamesFromFields(Ljava/lang/Class;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)[Ljava/lang/String;

    move-result-object p1

    .line 350
    sget-object p2, Lcom/univocity/parsers/annotations/helpers/MethodFilter;->ONLY_GETTERS:Lcom/univocity/parsers/annotations/helpers/MethodFilter;

    invoke-static {p3, p2}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->getSelectedIndexes(Ljava/lang/Class;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)[Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/univocity/parsers/common/ArgumentUtils;->toIntArray(Ljava/util/Collection;)[I

    move-result-object p2

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 353
    array-length v1, p1

    if-nez v1, :cond_2

    :cond_1
    move-object p1, v0

    :cond_2
    iput-object p1, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;->headers:[Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 354
    array-length p1, p2

    if-nez p1, :cond_4

    :cond_3
    move-object p2, v0

    :cond_4
    iput-object p2, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;->indexes:[I

    .line 355
    iput-object p3, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch$Switch;->value:Ljava/lang/Object;

    return-void
.end method
