.class public abstract Lcom/cclink/obbdownloader/ObbInfo;
.super Ljava/lang/Object;
.source "ObbInfo.java"


# static fields
.field private static final SALT:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [B

    .line 5
    fill-array-data v0, :array_0

    sput-object v0, Lcom/cclink/obbdownloader/ObbInfo;->SALT:[B

    return-void

    :array_0
    .array-data 1
        0x1t
        0x2bt
        -0x7at
        -0xbt
        0x4t
        0x8t
        -0x21t
        -0xct
        0x2bt
        0xct
        -0x2t
        -0x4t
        0x9t
        0x5t
        -0x34t
        -0x6ct
        -0x21t
        0x2dt
        -0x1t
        0x54t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getMainObbFileSize()J
.end method

.method public abstract getMainObbVersion()I
.end method

.method public getPatchObbFileSize()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPatchObbVersion()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getPublicKey()Ljava/lang/String;
.end method

.method public getSalt()[B
    .locals 1

    .line 18
    sget-object v0, Lcom/cclink/obbdownloader/ObbInfo;->SALT:[B

    return-object v0
.end method
