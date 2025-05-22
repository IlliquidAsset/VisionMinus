.class Lcom/powervision/livestreaming/LiveStreaming$LazyHolder;
.super Ljava/lang/Object;
.source "LiveStreaming.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/livestreaming/LiveStreaming;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static mInstance:Lcom/powervision/livestreaming/LiveStreaming;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 92
    new-instance v0, Lcom/powervision/livestreaming/LiveStreaming;

    invoke-direct {v0}, Lcom/powervision/livestreaming/LiveStreaming;-><init>()V

    sput-object v0, Lcom/powervision/livestreaming/LiveStreaming$LazyHolder;->mInstance:Lcom/powervision/livestreaming/LiveStreaming;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()Lcom/powervision/livestreaming/LiveStreaming;
    .locals 1

    .line 91
    sget-object v0, Lcom/powervision/livestreaming/LiveStreaming$LazyHolder;->mInstance:Lcom/powervision/livestreaming/LiveStreaming;

    return-object v0
.end method
