.class Lcom/leon/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureInfo;
.super Ljava/lang/Object;
.source "ApkSignatureSchemeV2Verifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leon/channel/common/verify/ApkSignatureSchemeV2Verifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SignatureInfo"
.end annotation


# instance fields
.field private final apkSigningBlockOffset:J

.field private final centralDirOffset:J

.field private final eocd:Ljava/nio/ByteBuffer;

.field private final eocdOffset:J

.field private final signatureBlock:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/leon/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    .line 104
    iput-wide p2, p0, Lcom/leon/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureInfo;->apkSigningBlockOffset:J

    .line 105
    iput-wide p4, p0, Lcom/leon/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureInfo;->centralDirOffset:J

    .line 106
    iput-wide p6, p0, Lcom/leon/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureInfo;->eocdOffset:J

    .line 107
    iput-object p8, p0, Lcom/leon/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureInfo;->eocd:Ljava/nio/ByteBuffer;

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;Lcom/leon/channel/common/verify/ApkSignatureSchemeV2Verifier$1;)V
    .locals 0

    .line 71
    invoke-direct/range {p0 .. p8}, Lcom/leon/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureInfo;-><init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;)V

    return-void
.end method
