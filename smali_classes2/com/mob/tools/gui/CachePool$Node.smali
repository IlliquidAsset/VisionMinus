.class Lcom/mob/tools/gui/CachePool$Node;
.super Ljava/lang/Object;
.source "CachePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/gui/CachePool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private cacheTime:J

.field public key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private size:I

.field final synthetic this$0:Lcom/mob/tools/gui/CachePool;

.field public value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mob/tools/gui/CachePool;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/mob/tools/gui/CachePool$Node;->this$0:Lcom/mob/tools/gui/CachePool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mob/tools/gui/CachePool;Lcom/mob/tools/gui/CachePool$1;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/CachePool$Node;-><init>(Lcom/mob/tools/gui/CachePool;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mob/tools/gui/CachePool$Node;)J
    .locals 2

    .line 153
    iget-wide v0, p0, Lcom/mob/tools/gui/CachePool$Node;->cacheTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/mob/tools/gui/CachePool$Node;J)J
    .locals 0

    .line 153
    iput-wide p1, p0, Lcom/mob/tools/gui/CachePool$Node;->cacheTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/mob/tools/gui/CachePool$Node;)I
    .locals 0

    .line 153
    iget p0, p0, Lcom/mob/tools/gui/CachePool$Node;->size:I

    return p0
.end method

.method static synthetic access$202(Lcom/mob/tools/gui/CachePool$Node;I)I
    .locals 0

    .line 153
    iput p1, p0, Lcom/mob/tools/gui/CachePool$Node;->size:I

    return p1
.end method
