.class public Lcom/mob/commons/MOBAPM;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mob/commons/MobProduct;
.implements Lcom/mob/tools/proguard/ClassKeeper;


# static fields
.field public static final SDK_VERSION_CODE:I

.field public static final SDK_VERSION_NAME:Ljava/lang/String; = "1.3.2"

.field public static sdkTag:Ljava/lang/String; = "MOBAPM"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "1.3.2"

    const-string v1, "\\."

    .line 1
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    const/4 v1, 0x3

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    mul-int/lit8 v3, v3, 0x64

    .line 7
    aget-object v4, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    sput v3, Lcom/mob/commons/MOBAPM;->SDK_VERSION_CODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProductTag()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/mob/commons/MOBAPM;->sdkTag:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkver()I
    .locals 1

    .line 1
    sget v0, Lcom/mob/commons/MOBAPM;->SDK_VERSION_CODE:I

    return v0
.end method
