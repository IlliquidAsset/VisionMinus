.class Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor$1;
.super Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor;
.source "AbstractMultiBeanProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor;-><init>([Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor<",
        "Ljava/lang/Object;",
        "TC;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor;

.field final synthetic val$type:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor;Ljava/lang/Class;Lcom/univocity/parsers/annotations/helpers/MethodFilter;Ljava/lang/Class;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor$1;->this$0:Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor;

    iput-object p4, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor$1;->val$type:Ljava/lang/Class;

    invoke-direct {p0, p2, p3}, Lcom/univocity/parsers/common/processor/core/AbstractBeanProcessor;-><init>(Ljava/lang/Class;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)V

    return-void
.end method


# virtual methods
.method public beanProcessed(Ljava/lang/Object;Lcom/univocity/parsers/common/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TC;)V"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor$1;->this$0:Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor;

    iget-object v1, p0, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor$1;->val$type:Ljava/lang/Class;

    invoke-virtual {v0, v1, p1, p2}, Lcom/univocity/parsers/common/processor/core/AbstractMultiBeanProcessor;->beanProcessed(Ljava/lang/Class;Ljava/lang/Object;Lcom/univocity/parsers/common/Context;)V

    return-void
.end method
