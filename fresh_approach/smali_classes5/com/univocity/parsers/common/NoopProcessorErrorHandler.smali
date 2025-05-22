.class public final Lcom/univocity/parsers/common/NoopProcessorErrorHandler;
.super Ljava/lang/Object;
.source "NoopProcessorErrorHandler.java"

# interfaces
.implements Lcom/univocity/parsers/common/ProcessorErrorHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/univocity/parsers/common/Context;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/univocity/parsers/common/ProcessorErrorHandler<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final instance:Lcom/univocity/parsers/common/ProcessorErrorHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/univocity/parsers/common/NoopProcessorErrorHandler;

    invoke-direct {v0}, Lcom/univocity/parsers/common/NoopProcessorErrorHandler;-><init>()V

    sput-object v0, Lcom/univocity/parsers/common/NoopProcessorErrorHandler;->instance:Lcom/univocity/parsers/common/ProcessorErrorHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleError(Lcom/univocity/parsers/common/DataProcessingException;[Ljava/lang/Object;Lcom/univocity/parsers/common/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/univocity/parsers/common/DataProcessingException;",
            "[",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation

    .line 44
    throw p1
.end method
