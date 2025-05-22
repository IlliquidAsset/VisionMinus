.class public final Lcom/univocity/parsers/common/processor/core/NoopProcessor;
.super Lcom/univocity/parsers/common/processor/core/AbstractProcessor;
.source "NoopProcessor.java"


# static fields
.field public static final instance:Lcom/univocity/parsers/common/processor/core/Processor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/univocity/parsers/common/processor/core/NoopProcessor;

    invoke-direct {v0}, Lcom/univocity/parsers/common/processor/core/NoopProcessor;-><init>()V

    sput-object v0, Lcom/univocity/parsers/common/processor/core/NoopProcessor;->instance:Lcom/univocity/parsers/common/processor/core/Processor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/univocity/parsers/common/processor/core/AbstractProcessor;-><init>()V

    return-void
.end method
