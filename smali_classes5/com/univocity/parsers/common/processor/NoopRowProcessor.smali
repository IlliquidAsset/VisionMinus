.class public final Lcom/univocity/parsers/common/processor/NoopRowProcessor;
.super Lcom/univocity/parsers/common/processor/AbstractRowProcessor;
.source "NoopRowProcessor.java"


# static fields
.field public static final instance:Lcom/univocity/parsers/common/processor/RowProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/univocity/parsers/common/processor/NoopRowProcessor;

    invoke-direct {v0}, Lcom/univocity/parsers/common/processor/NoopRowProcessor;-><init>()V

    sput-object v0, Lcom/univocity/parsers/common/processor/NoopRowProcessor;->instance:Lcom/univocity/parsers/common/processor/RowProcessor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/univocity/parsers/common/processor/AbstractRowProcessor;-><init>()V

    return-void
.end method
