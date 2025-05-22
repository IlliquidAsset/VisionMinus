.class Lcom/powervision/base/utils/SPHelperUtils$LazyHolder;
.super Ljava/lang/Object;
.source "SPHelperUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/base/utils/SPHelperUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static mInstance:Lcom/powervision/base/utils/SPHelperUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/powervision/base/utils/SPHelperUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/powervision/base/utils/SPHelperUtils;-><init>(Lcom/powervision/base/utils/SPHelperUtils$1;)V

    sput-object v0, Lcom/powervision/base/utils/SPHelperUtils$LazyHolder;->mInstance:Lcom/powervision/base/utils/SPHelperUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/powervision/base/utils/SPHelperUtils;
    .locals 1

    .line 35
    sget-object v0, Lcom/powervision/base/utils/SPHelperUtils$LazyHolder;->mInstance:Lcom/powervision/base/utils/SPHelperUtils;

    return-object v0
.end method
