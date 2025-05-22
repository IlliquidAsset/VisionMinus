.class Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch$1;
.super Lcom/univocity/parsers/common/ContextWrapper;
.source "AbstractProcessorSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch;->rowProcessed([Ljava/lang/String;Lcom/univocity/parsers/common/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final fieldNames:[Ljava/lang/String;

.field private final indexes:[I

.field final synthetic this$0:Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch;


# direct methods
.method constructor <init>(Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch;Lcom/univocity/parsers/common/Context;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch$1;->this$0:Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch;

    invoke-direct {p0, p2}, Lcom/univocity/parsers/common/ContextWrapper;-><init>(Lcom/univocity/parsers/common/Context;)V

    .line 120
    iget-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch$1;->this$0:Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch;

    invoke-virtual {p1}, Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch;->getHeaders()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch$1;->fieldNames:[Ljava/lang/String;

    .line 121
    iget-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch$1;->this$0:Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch;

    invoke-virtual {p1}, Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch;->getIndexes()[I

    move-result-object p1

    iput-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch$1;->indexes:[I

    return-void
.end method


# virtual methods
.method public extractedFieldIndexes()[I
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch$1;->indexes:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch$1;->context:Lcom/univocity/parsers/common/Context;

    invoke-interface {v0}, Lcom/univocity/parsers/common/Context;->extractedFieldIndexes()[I

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public headers()[Ljava/lang/String;
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch$1;->fieldNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractProcessorSwitch$1;->context:Lcom/univocity/parsers/common/Context;

    invoke-interface {v0}, Lcom/univocity/parsers/common/Context;->headers()[Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method
