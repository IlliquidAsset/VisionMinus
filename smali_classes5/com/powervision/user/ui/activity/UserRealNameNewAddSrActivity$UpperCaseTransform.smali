.class Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity$UpperCaseTransform;
.super Landroid/text/method/ReplacementTransformationMethod;
.source "UserRealNameNewAddSrActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpperCaseTransform"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Landroid/text/method/ReplacementTransformationMethod;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity$1;)V
    .locals 0

    .line 173
    invoke-direct {p0}, Lcom/powervision/user/ui/activity/UserRealNameNewAddSrActivity$UpperCaseTransform;-><init>()V

    return-void
.end method


# virtual methods
.method protected getOriginal()[C
    .locals 1

    const/16 v0, 0x1a

    new-array v0, v0, [C

    .line 176
    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 2
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data
.end method

.method protected getReplacement()[C
    .locals 1

    const/16 v0, 0x1a

    new-array v0, v0, [C

    .line 181
    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data
.end method
