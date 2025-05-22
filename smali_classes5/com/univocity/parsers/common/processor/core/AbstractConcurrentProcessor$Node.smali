.class Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;
.super Ljava/lang/Object;
.source "AbstractConcurrentProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final context:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public next:Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;

.field public final row:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;->row:[Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/univocity/parsers/common/processor/core/AbstractConcurrentProcessor$Node;->context:Ljava/lang/Object;

    return-void
.end method
