.class final Lcom/univocity/parsers/common/NoopRowProcessorErrorHandler;
.super Ljava/lang/Object;
.source "NoopRowProcessorErrorHandler.java"

# interfaces
.implements Lcom/univocity/parsers/common/RowProcessorErrorHandler;


# static fields
.field public static final instance:Lcom/univocity/parsers/common/RowProcessorErrorHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/univocity/parsers/common/NoopRowProcessorErrorHandler;

    invoke-direct {v0}, Lcom/univocity/parsers/common/NoopRowProcessorErrorHandler;-><init>()V

    sput-object v0, Lcom/univocity/parsers/common/NoopRowProcessorErrorHandler;->instance:Lcom/univocity/parsers/common/RowProcessorErrorHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handleError(Lcom/univocity/parsers/common/DataProcessingException;[Ljava/lang/Object;Lcom/univocity/parsers/common/Context;)V
    .locals 0

    .line 27
    check-cast p3, Lcom/univocity/parsers/common/ParsingContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/univocity/parsers/common/NoopRowProcessorErrorHandler;->handleError(Lcom/univocity/parsers/common/DataProcessingException;[Ljava/lang/Object;Lcom/univocity/parsers/common/ParsingContext;)V

    return-void
.end method

.method public handleError(Lcom/univocity/parsers/common/DataProcessingException;[Ljava/lang/Object;Lcom/univocity/parsers/common/ParsingContext;)V
    .locals 0

    .line 39
    throw p1
.end method
