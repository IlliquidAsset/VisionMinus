.class Lcom/powervision/base/net/RetrofitHelper$RetrofitHolder;
.super Ljava/lang/Object;
.source "RetrofitHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/base/net/RetrofitHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RetrofitHolder"
.end annotation


# static fields
.field private static INSTANCE:Lcom/powervision/base/net/RetrofitHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lcom/powervision/base/net/RetrofitHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/powervision/base/net/RetrofitHelper;-><init>(Lcom/powervision/base/net/RetrofitHelper$1;)V

    sput-object v0, Lcom/powervision/base/net/RetrofitHelper$RetrofitHolder;->INSTANCE:Lcom/powervision/base/net/RetrofitHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/powervision/base/net/RetrofitHelper;
    .locals 1

    .line 32
    sget-object v0, Lcom/powervision/base/net/RetrofitHelper$RetrofitHolder;->INSTANCE:Lcom/powervision/base/net/RetrofitHelper;

    return-object v0
.end method
