.class Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader$1;
.super Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;
.source "ConcurrentCharLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;-><init>(Ljava/io/Reader;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool<",
        "Lcom/univocity/parsers/common/input/concurrent/CharBucket;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;

.field final synthetic val$bucketSize:I


# direct methods
.method constructor <init>(Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;II)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader$1;->this$0:Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader;

    iput p3, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader$1;->val$bucketSize:I

    invoke-direct {p0, p2}, Lcom/univocity/parsers/common/input/concurrent/FixedInstancePool;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected newInstance()Lcom/univocity/parsers/common/input/concurrent/CharBucket;
    .locals 2

    .line 61
    new-instance v0, Lcom/univocity/parsers/common/input/concurrent/CharBucket;

    iget v1, p0, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader$1;->val$bucketSize:I

    invoke-direct {v0, v1}, Lcom/univocity/parsers/common/input/concurrent/CharBucket;-><init>(I)V

    return-object v0
.end method

.method protected bridge synthetic newInstance()Ljava/lang/Object;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/univocity/parsers/common/input/concurrent/ConcurrentCharLoader$1;->newInstance()Lcom/univocity/parsers/common/input/concurrent/CharBucket;

    move-result-object v0

    return-object v0
.end method
