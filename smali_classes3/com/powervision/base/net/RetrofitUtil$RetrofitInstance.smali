.class Lcom/powervision/base/net/RetrofitUtil$RetrofitInstance;
.super Ljava/lang/Object;
.source "RetrofitUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/base/net/RetrofitUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RetrofitInstance"
.end annotation


# static fields
.field private static INSTANCE:Lcom/powervision/base/net/RetrofitUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lcom/powervision/base/net/RetrofitUtil;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/powervision/base/net/RetrofitUtil;-><init>(Lcom/powervision/base/net/RetrofitUtil$1;)V

    sput-object v0, Lcom/powervision/base/net/RetrofitUtil$RetrofitInstance;->INSTANCE:Lcom/powervision/base/net/RetrofitUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/powervision/base/net/RetrofitUtil;
    .locals 1

    .line 41
    sget-object v0, Lcom/powervision/base/net/RetrofitUtil$RetrofitInstance;->INSTANCE:Lcom/powervision/base/net/RetrofitUtil;

    return-object v0
.end method
