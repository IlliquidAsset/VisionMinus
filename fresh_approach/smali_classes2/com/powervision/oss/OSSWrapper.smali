.class public Lcom/powervision/oss/OSSWrapper;
.super Ljava/lang/Object;
.source "OSSWrapper.java"


# static fields
.field private static final OSS_ENDPOINT:Ljava/lang/String; = "http://oss-cn-shanghai.aliyuncs.com"

.field private static final STS_INFO_URL:Ljava/lang/String; = "http://*.*.*.*:****/sts/getsts"

.field private static final WRAPPER:Lcom/powervision/oss/OSSWrapper;


# instance fields
.field private mClient:Lcom/alibaba/sdk/android/oss/OSSClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/powervision/oss/OSSWrapper;

    invoke-direct {v0}, Lcom/powervision/oss/OSSWrapper;-><init>()V

    sput-object v0, Lcom/powervision/oss/OSSWrapper;->WRAPPER:Lcom/powervision/oss/OSSWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/powervision/oss/OSSWrapper;->mClient:Lcom/alibaba/sdk/android/oss/OSSClient;

    .line 17
    new-instance v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSAuthCredentialsProvider;

    const-string v1, "http://*.*.*.*:****/sts/getsts"

    invoke-direct {v0, v1}, Lcom/alibaba/sdk/android/oss/common/auth/OSSAuthCredentialsProvider;-><init>(Ljava/lang/String;)V

    .line 18
    new-instance v1, Lcom/alibaba/sdk/android/oss/OSSClient;

    invoke-static {}, Lcom/powervision/oss/OSSApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    const-string v3, "http://oss-cn-shanghai.aliyuncs.com"

    invoke-direct {v1, v2, v3, v0}, Lcom/alibaba/sdk/android/oss/OSSClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;)V

    iput-object v1, p0, Lcom/powervision/oss/OSSWrapper;->mClient:Lcom/alibaba/sdk/android/oss/OSSClient;

    return-void
.end method

.method public static sharedWrapper()Lcom/powervision/oss/OSSWrapper;
    .locals 1

    .line 22
    sget-object v0, Lcom/powervision/oss/OSSWrapper;->WRAPPER:Lcom/powervision/oss/OSSWrapper;

    return-object v0
.end method


# virtual methods
.method public getClient()Lcom/alibaba/sdk/android/oss/OSSClient;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/powervision/oss/OSSWrapper;->mClient:Lcom/alibaba/sdk/android/oss/OSSClient;

    return-object v0
.end method
