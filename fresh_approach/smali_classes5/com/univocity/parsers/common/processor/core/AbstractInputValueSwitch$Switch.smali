.class Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;
.super Ljava/lang/Object;
.source "AbstractInputValueSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Switch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/univocity/parsers/common/Context;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final headers:[Ljava/lang/String;

.field final indexes:[I

.field final matcher:Lcom/univocity/parsers/common/processor/CustomMatcher;

.field final processor:Lcom/univocity/parsers/common/processor/core/Processor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/univocity/parsers/common/processor/core/Processor<",
            "TT;>;"
        }
    .end annotation
.end field

.field final value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/univocity/parsers/common/processor/core/Processor;[Ljava/lang/String;[ILjava/lang/String;Lcom/univocity/parsers/common/processor/CustomMatcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/univocity/parsers/common/processor/core/Processor<",
            "TT;>;[",
            "Ljava/lang/String;",
            "[I",
            "Ljava/lang/String;",
            "Lcom/univocity/parsers/common/processor/CustomMatcher;",
            ")V"
        }
    .end annotation

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;->processor:Lcom/univocity/parsers/common/processor/core/Processor;

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 274
    array-length v0, p2

    if-nez v0, :cond_1

    :cond_0
    move-object p2, p1

    :cond_1
    iput-object p2, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;->headers:[Ljava/lang/String;

    if-eqz p3, :cond_2

    .line 275
    array-length p2, p3

    if-nez p2, :cond_3

    :cond_2
    move-object p3, p1

    :cond_3
    iput-object p3, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;->indexes:[I

    if-nez p4, :cond_4

    goto :goto_0

    .line 276
    :cond_4
    invoke-virtual {p4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;->value:Ljava/lang/String;

    .line 277
    iput-object p5, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;->matcher:Lcom/univocity/parsers/common/processor/CustomMatcher;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Switch{processor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;->processor:Lcom/univocity/parsers/common/processor/core/Processor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", headers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;->headers:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", indexes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;->indexes:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", matcher="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/univocity/parsers/common/processor/core/AbstractInputValueSwitch$Switch;->matcher:Lcom/univocity/parsers/common/processor/CustomMatcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
