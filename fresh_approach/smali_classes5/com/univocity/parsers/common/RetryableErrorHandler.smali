.class public abstract Lcom/univocity/parsers/common/RetryableErrorHandler;
.super Ljava/lang/Object;
.source "RetryableErrorHandler.java"

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


# instance fields
.field private defaultValue:Ljava/lang/Object;

.field private skipRecord:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/univocity/parsers/common/RetryableErrorHandler;->skipRecord:Z

    return-void
.end method


# virtual methods
.method public final getDefaultValue()Ljava/lang/Object;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/univocity/parsers/common/RetryableErrorHandler;->defaultValue:Ljava/lang/Object;

    return-object v0
.end method

.method public final isRecordSkipped()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/univocity/parsers/common/RetryableErrorHandler;->skipRecord:Z

    return v0
.end method

.method public final keepRecord()V
    .locals 1

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/univocity/parsers/common/RetryableErrorHandler;->skipRecord:Z

    return-void
.end method

.method final prepareToRun()V
    .locals 1

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/univocity/parsers/common/RetryableErrorHandler;->skipRecord:Z

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/univocity/parsers/common/RetryableErrorHandler;->defaultValue:Ljava/lang/Object;

    return-void
.end method

.method public final setDefaultValue(Ljava/lang/Object;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/univocity/parsers/common/RetryableErrorHandler;->defaultValue:Ljava/lang/Object;

    .line 56
    invoke-virtual {p0}, Lcom/univocity/parsers/common/RetryableErrorHandler;->keepRecord()V

    return-void
.end method
