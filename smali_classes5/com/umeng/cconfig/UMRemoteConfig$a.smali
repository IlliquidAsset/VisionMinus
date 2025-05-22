.class Lcom/umeng/cconfig/UMRemoteConfig$a;
.super Ljava/lang/Object;
.source "UMRemoteConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/cconfig/UMRemoteConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/umeng/cconfig/UMRemoteConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 76
    new-instance v0, Lcom/umeng/cconfig/UMRemoteConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/cconfig/UMRemoteConfig;-><init>(Lcom/umeng/cconfig/UMRemoteConfig$1;)V

    sput-object v0, Lcom/umeng/cconfig/UMRemoteConfig$a;->a:Lcom/umeng/cconfig/UMRemoteConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/umeng/cconfig/UMRemoteConfig;
    .locals 1

    .line 75
    sget-object v0, Lcom/umeng/cconfig/UMRemoteConfig$a;->a:Lcom/umeng/cconfig/UMRemoteConfig;

    return-object v0
.end method
